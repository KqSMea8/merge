.class public final Lc8/mOc;
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
    .line 63
    iput-object p1, p0, Lc8/mOc;->a:Lc8/kOc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lc8/mOc;->a:Lc8/kOc;

    iget-object v0, v0, Lc8/kOc;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 68
    iget-object v0, p0, Lc8/mOc;->a:Lc8/kOc;

    iget-object v0, v0, Lc8/kOc;->b:Lc8/jOc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/jOc;->a(Lc8/jOc;Z)Z

    .line 69
    invoke-static {}, Lc8/qOc;->a()Ljava/lang/String;

    move-result-object v0

    .line 1015
    sput-object v0, Lc8/qOc;->a:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lc8/mOc;->a:Lc8/kOc;

    iget-object v0, v0, Lc8/kOc;->b:Lc8/jOc;

    invoke-static {v0}, Lc8/jOc;->a(Lc8/jOc;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 71
    return-void
.end method
