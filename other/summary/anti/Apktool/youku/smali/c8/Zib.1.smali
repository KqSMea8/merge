.class public Lc8/Zib;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/auth/third/ui/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/ali/auth/third/ui/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/auth/third/ui/LoginActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lc8/Zib;->this$0:Lcom/ali/auth/third/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    const-string/jumbo v0, "login.LoginActivity"

    const-string/jumbo v1, "click to destroy"

    invoke-static {v0, v1}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lc8/Zib;->this$0:Lcom/ali/auth/third/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/LoginActivity;->finish()V

    .line 45
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 46
    return-void
.end method
