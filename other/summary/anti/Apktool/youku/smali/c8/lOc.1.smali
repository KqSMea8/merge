.class public final Lc8/lOc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lc8/kOc;


# direct methods
.method constructor <init>(Lc8/kOc;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lc8/lOc;->a:Lc8/kOc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lc8/lOc;->a:Lc8/kOc;

    iget-object v0, v0, Lc8/kOc;->b:Lc8/jOc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/jOc;->a(Lc8/jOc;Z)Z

    .line 60
    iget-object v0, p0, Lc8/lOc;->a:Lc8/kOc;

    iget-object v0, v0, Lc8/kOc;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    return-void
.end method
