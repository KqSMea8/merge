.class public Lcom/taobao/accs/statistics/DBHelper$SQLObject;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/statistics/DBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SQLObject"
.end annotation


# instance fields
.field args:[Ljava/lang/Object;

.field sql:Ljava/lang/String;

.field final synthetic this$0:Lcom/taobao/accs/statistics/DBHelper;


# direct methods
.method private constructor <init>(Lcom/taobao/accs/statistics/DBHelper;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/taobao/accs/statistics/DBHelper$SQLObject;->this$0:Lcom/taobao/accs/statistics/DBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/taobao/accs/statistics/DBHelper$SQLObject;->sql:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/taobao/accs/statistics/DBHelper$SQLObject;->args:[Ljava/lang/Object;

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/accs/statistics/DBHelper;Ljava/lang/String;[Ljava/lang/Object;Lcom/taobao/accs/statistics/DBHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/accs/statistics/DBHelper;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Ljava/lang/Object;
    .param p4, "x3"    # Lcom/taobao/accs/statistics/DBHelper$1;

    .prologue
    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/accs/statistics/DBHelper$SQLObject;-><init>(Lcom/taobao/accs/statistics/DBHelper;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
