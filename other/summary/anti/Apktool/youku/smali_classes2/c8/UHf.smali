.class public Lc8/UHf;
.super Lc8/Htg;
.source "LogFileUploaderImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/XHf;->startUpload(Ljava/lang/String;Lc8/PHf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/XHf;


# direct methods
.method constructor <init>(Lc8/XHf;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 58
    iput-object p1, p0, Lc8/UHf;->this$0:Lc8/XHf;

    invoke-direct {p0, p2}, Lc8/Htg;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lc8/EHf;->getAppkey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lc8/EHf;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironment()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
