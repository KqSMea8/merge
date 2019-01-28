.class public Lc8/nff;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/iff;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lc8/mff;


# direct methods
.method constructor <init>(Lc8/mff;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/nff;->b:Lc8/mff;

    iput-object p2, p0, Lc8/nff;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lc8/pff;

    invoke-direct {v0}, Lc8/pff;-><init>()V

    iget-object v1, p0, Lc8/nff;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/pff;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc8/pff;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lc8/nff;->b:Lc8/mff;

    iget-object v1, v1, Lc8/mff;->b:Lc8/lff;

    iget-object v2, p0, Lc8/nff;->b:Lc8/mff;

    iget-object v2, v2, Lc8/mff;->a:Landroid/webkit/WebView;

    invoke-static {v1, v2, v0}, Lc8/lff;->a(Lc8/lff;Landroid/webkit/WebView;Lc8/pff;)V

    return-void
.end method
