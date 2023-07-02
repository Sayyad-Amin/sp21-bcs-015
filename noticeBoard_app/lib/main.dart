import 'package:flutter/material.dart';

void main() {
  runApp(NoticeBoardApp());
}

class User {
  String role;
  String id;
  String password;
  bool isVisible;

  User({
    required this.role,
    required this.id,
    required this.password,
    this.isVisible = true,
  });
}

class Notice {
  String title;
  String description;

  Notice({
    required this.title,
    required this.description,
  });
}

class NoticeBoardApp extends StatefulWidget {
  @override
  _NoticeBoardAppState createState() => _NoticeBoardAppState();
}

class _NoticeBoardAppState extends State<NoticeBoardApp> {
  List<User> users = [
    User(role: 'Doo', id: 'doo123', password: 'doo@123'),
    User(role: 'Teacher', id: 'teacher123', password: 'teacher@123'),
    User(
        role: 'FYP Committee Head', id: 'fyphead123', password: 'fyphead@123'),
    User(
        role: 'Time Table Incharge',
        id: 'timetable123',
        password: 'timetable@123'),
  ];

  List<Notice> notices = [];

  void addUser(User user) {
    setState(() {
      users.add(user);
    });
  }

  void deleteUser(int index) {
    setState(() {
      users.removeAt(index);
    });
  }

  void editUser(User user, int index) {
    setState(() {
      users[index] = user;
    });
  }

  void toggleVisibility(int index) {
    setState(() {
      User user = users[index];
      user.isVisible = !user.isVisible;
    });
  }

  void addNotice(Notice notice) {
    setState(() {
      notices.add(notice);
    });
  }

  void deleteNotice(int index) {
    setState(() {
      notices.removeAt(index);
    });
  }

  void updateNotice(Notice notice, int index) {
    setState(() {
      notices[index] = notice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notice Board App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: UserScreen(
        users: users,
        notices: notices,
        onAddUser: addUser,
        onDeleteUser: deleteUser,
        onEditUser: editUser,
        onToggleVisibility: toggleVisibility,
        onAddNotice: addNotice,
        onDeleteNotice: deleteNotice,
        onUpdateNotice: updateNotice,
      ),
    );
  }
}

class UserScreen extends StatelessWidget {
  final List<User> users;
  final List<Notice> notices;
  final Function(User) onAddUser;
  final Function(int) onDeleteUser;
  final Function(User, int) onEditUser;
  final Function(int) onToggleVisibility;
  final Function(Notice) onAddNotice;
  final Function(int) onDeleteNotice;
  final Function(Notice, int) onUpdateNotice;

  UserScreen({
    required this.users,
    required this.notices,
    required this.onAddUser,
    required this.onDeleteUser,
    required this.onEditUser,
    required this.onToggleVisibility,
    required this.onAddNotice,
    required this.onDeleteNotice,
    required this.onUpdateNotice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Screen'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal,
              Colors.green
            ]
          )
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  User user = users[index];
                  return ListTile(
                    title: Text(user.role),
                    subtitle: Text('ID: ${user.id}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: user.isVisible
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          onPressed: () {
                            onToggleVisibility(index);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            onDeleteUser(index);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return EditUserDialog(
                                  user: user,
                                  onEditUser: (user) {
                                    onEditUser(user, index);
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AddUserDialog(
                        onAddUser: onAddUser,
                      );
                    },
                  );
                },
                child: Text('Add User'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminNoticesScreen(
                      notices: notices,
                      onAddNotice: onAddNotice,
                      onDeleteNotice: onDeleteNotice,
                      onUpdateNotice: onUpdateNotice,
                    ),
                  ),
                );
              },
              child: Text('Admin Notices'),
            ),
          ],
        ),
      ),
    );
  }
}

class AddUserDialog extends StatefulWidget {
  final Function(User) onAddUser;

  AddUserDialog({required this.onAddUser});

  @override
  _AddUserDialogState createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {
  final _formKey = GlobalKey<FormState>();
  late String _role;
  late String _id;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add User'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Role'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a role';
                }
                return null;
              },
              onSaved: (value) {
                _role = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'ID'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an ID';
                }
                return null;
              },
              onSaved: (value) {
                _id = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
              onSaved: (value) {
                _password = value!;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              User user = User(
                role: _role,
                id: _id,
                password: _password,
              );
              widget.onAddUser(user);
              Navigator.pop(context);
            }
          },
          child: Text('Add'),
        ),
      ],
    );
  }
}

class EditUserDialog extends StatefulWidget {
  final User user;
  final Function(User) onEditUser;

  EditUserDialog({required this.user, required this.onEditUser});

  @override
  _EditUserDialogState createState() => _EditUserDialogState();
}

class _EditUserDialogState extends State<EditUserDialog> {
  final _formKey = GlobalKey<FormState>();
  late String _role;
  late String _id;
  late String _password;

  @override
  void initState() {
    super.initState();
    _role = widget.user.role;
    _id = widget.user.id;
    _password = widget.user.password;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Edit User'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              initialValue: _role,
              decoration: InputDecoration(labelText: 'Role'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a role';
                }
                return null;
              },
              onSaved: (value) {
                _role = value!;
              },
            ),
            TextFormField(
              initialValue: _id,
              decoration: InputDecoration(labelText: 'ID'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an ID';
                }
                return null;
              },
              onSaved: (value) {
                _id = value!;
              },
            ),
            TextFormField(
              initialValue: _password,
              decoration: InputDecoration(labelText: 'Password'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
              onSaved: (value) {
                _password = value!;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              User updatedUser = User(
                role: _role,
                id: _id,
                password: _password,
                isVisible: widget.user.isVisible,
              );
              widget.onEditUser(updatedUser);
              Navigator.pop(context);
            }
          },
          child: Text('Save'),
        ),
      ],
    );
  }
}

class AdminNoticesScreen extends StatelessWidget {
  final List<Notice> notices;
  final Function(Notice) onAddNotice;
  final Function(int) onDeleteNotice;
  final Function(Notice, int) onUpdateNotice;

  AdminNoticesScreen({
    required this.notices,
    required this.onAddNotice,
    required this.onDeleteNotice,
    required this.onUpdateNotice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Notices'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notices.length,
              itemBuilder: (context, index) {
                Notice notice = notices[index];
                return ListTile(
                  title: Text(notice.title),
                  subtitle: Text(notice.description),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          onDeleteNotice(index);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return EditNoticeDialog(
                                notice: notice,
                                onUpdateNotice: (notice) {
                                  onUpdateNotice(notice, index);
                                },
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AddNoticeDialog(
                      onAddNotice: onAddNotice,
                    );
                  },
                );
              },
              child: Text('Add Notice'),
            ),
          ),
        ],
      ),
    );
  }
}

class AddNoticeDialog extends StatefulWidget {
  final Function(Notice) onAddNotice;

  AddNoticeDialog({required this.onAddNotice});

  @override
  _AddNoticeDialogState createState() => _AddNoticeDialogState();
}

class _AddNoticeDialogState extends State<AddNoticeDialog> {
  final _formKey = GlobalKey<FormState>();
  late String _title;
  late String _description;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Notice'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Title'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
              onSaved: (value) {
                _title = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Description'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
              onSaved: (value) {
                _description = value!;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              Notice notice = Notice(
                title: _title,
                description: _description,
              );
              widget.onAddNotice(notice);
              Navigator.pop(context);
            }
          },
          child: Text('Add'),
        ),
      ],
    );
  }
}

class EditNoticeDialog extends StatefulWidget {
  final Notice notice;
  final Function(Notice) onUpdateNotice;

  EditNoticeDialog({required this.notice, required this.onUpdateNotice});

  @override
  _EditNoticeDialogState createState() => _EditNoticeDialogState();
}

class _EditNoticeDialogState extends State<EditNoticeDialog> {
  final _formKey = GlobalKey<FormState>();
  late String _title;
  late String _description;

  @override
  void initState() {
    super.initState();
    _title = widget.notice.title;
    _description = widget.notice.description;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Edit Notice'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              initialValue: _title,
              decoration: InputDecoration(labelText: 'Title'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
              onSaved: (value) {
                _title = value!;
              },
            ),
            TextFormField(
              initialValue: _description,
              decoration: InputDecoration(labelText: 'Description'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a description';
                }
                return null;
              },
              onSaved: (value) {
                _description = value!;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              Notice updatedNotice = Notice(
                title: _title,
                description: _description,
              );
              widget.onUpdateNotice(updatedNotice);
              Navigator.pop(context);
            }
          },
          child: Text('Save'),
        ),
      ],
    );
  }
}
