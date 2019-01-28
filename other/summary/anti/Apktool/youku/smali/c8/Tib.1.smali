.class public Lc8/Tib;
.super Ljava/lang/Object;
.source "MtopRemoteLoginImpl.java"

# interfaces
.implements Lc8/xgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Uib;->login(Lc8/oNf;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Uib;

.field final synthetic val$listener:Lc8/oNf;


# direct methods
.method constructor <init>(Lc8/Uib;Lc8/oNf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Uib;

    .prologue
    .line 19
    iput-object p1, p0, Lc8/Tib;->this$0:Lc8/Uib;

    iput-object p2, p0, Lc8/Tib;->val$listener:Lc8/oNf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/Tib;->val$listener:Lc8/oNf;

    if-eqz v0, :cond_0

    .line 30
    const/16 v0, 0x2713

    if-ne p1, v0, :cond_1

    .line 31
    iget-object v0, p0, Lc8/Tib;->val$listener:Lc8/oNf;

    invoke-interface {v0}, Lc8/oNf;->onLoginCancel()V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lc8/Tib;->val$listener:Lc8/oNf;

    invoke-interface {v0}, Lc8/oNf;->onLoginFail()V

    goto :goto_0
.end method

.method public onSuccess(Lc8/ahb;)V
    .locals 1
    .param p1, "session"    # Lc8/ahb;

    .prologue
    .line 22
    iget-object v0, p0, Lc8/Tib;->val$listener:Lc8/oNf;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lc8/Tib;->val$listener:Lc8/oNf;

    invoke-interface {v0}, Lc8/oNf;->onLoginSuccess()V

    .line 25
    :cond_0
    return-void
.end method
