.class public Lcom/taobao/accs/utl/UTMini$1;
.super Ljava/lang/Object;
.source "UTMini.java"

# interfaces
.implements Lcom/ut/mini/IUTApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/utl/UTMini;->start(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/utl/UTMini;

.field final synthetic val$appkey:Ljava/lang/String;

.field final synthetic val$ttId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/accs/utl/UTMini;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/taobao/accs/utl/UTMini$1;->this$0:Lcom/taobao/accs/utl/UTMini;

    iput-object p2, p0, Lcom/taobao/accs/utl/UTMini$1;->val$ttId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/accs/utl/UTMini$1;->val$appkey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUTAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUTChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/accs/utl/UTMini$1;->val$ttId:Ljava/lang/String;

    return-object v0
.end method

.method public getUTCrashCraughtListener()Lcom/ut/mini/crashhandler/IUTCrashCaughtListner;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUTRequestAuthInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;

    iget-object v1, p0, Lcom/taobao/accs/utl/UTMini$1;->val$appkey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public isAliyunOsSystem()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isUTCrashHandlerDisable()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isUTLogEnable()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
