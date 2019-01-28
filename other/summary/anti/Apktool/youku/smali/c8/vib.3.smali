.class public Lc8/vib;
.super Ljava/lang/Object;
.source "LoginActivityResultHandler.java"

# interfaces
.implements Lc8/xgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xib;->handleCheck(Landroid/content/Intent;Lc8/xgb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xib;

.field final synthetic val$savedActivity:Ljava/lang/ref/WeakReference;

.field final synthetic val$trustLoginCallback:Lc8/xgb;


# direct methods
.method constructor <init>(Lc8/xib;Ljava/lang/ref/WeakReference;Lc8/xgb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/xib;

    .prologue
    .line 139
    iput-object p1, p0, Lc8/vib;->this$0:Lc8/xib;

    iput-object p2, p0, Lc8/vib;->val$savedActivity:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lc8/vib;->val$trustLoginCallback:Lc8/xgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-object v0, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v1, Lc8/tib;

    invoke-direct {v1, p0}, Lc8/tib;-><init>(Lc8/vib;)V

    invoke-interface {v0, v1}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public onSuccess(Lc8/ahb;)V
    .locals 2
    .param p1, "session"    # Lc8/ahb;

    .prologue
    .line 154
    sget-object v0, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v1, Lc8/uib;

    invoke-direct {v1, p0}, Lc8/uib;-><init>(Lc8/vib;)V

    invoke-interface {v0, v1}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method
