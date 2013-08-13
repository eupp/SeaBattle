#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "field.h"
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
	ui->setupUi(this);
	Field *field = new Field;
	ui->testLayout->addWidget(field);
}

MainWindow::~MainWindow()
{
    delete ui;
}
