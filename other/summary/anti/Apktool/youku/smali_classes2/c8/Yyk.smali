.class public Lc8/Yyk;
.super Ljava/lang/Object;
.source "MKTHandler.java"

# interfaces
.implements Lc8/wIf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dzk;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dzk;


# direct methods
.method constructor <init>(Lc8/dzk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dzk;

    .prologue
    .line 108
    iput-object p1, p0, Lc8/Yyk;->this$0:Lc8/dzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lc8/nOp;->getCorrectionTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
