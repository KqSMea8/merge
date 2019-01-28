.class public final Lc8/DOc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lc8/COc;


# direct methods
.method constructor <init>(Lc8/COc;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lc8/DOc;->a:Lc8/COc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lc8/DOc;->a:Lc8/COc;

    iget-object v0, v0, Lc8/COc;->b:Lc8/xOc;

    iget-object v0, v0, Lc8/xOc;->a:Lcom/alipay/sdk/auth/AuthActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/AuthActivity;->a(Lcom/alipay/sdk/auth/AuthActivity;Z)Z

    .line 206
    iget-object v0, p0, Lc8/DOc;->a:Lc8/COc;

    iget-object v0, v0, Lc8/COc;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 207
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 208
    return-void
.end method
