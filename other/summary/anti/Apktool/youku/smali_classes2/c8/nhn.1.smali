.class public Lc8/nhn;
.super Lc8/SIj;
.source "LoginReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/service/login/LoginReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/service/login/LoginReceiver;


# direct methods
.method public constructor <init>(Lcom/youku/service/login/LoginReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/service/login/LoginReceiver;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lc8/nhn;->this$0:Lcom/youku/service/login/LoginReceiver;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 92
    return-void
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 0
    .param p1, "request"    # Lc8/TIj;

    .prologue
    .line 86
    return-void
.end method
