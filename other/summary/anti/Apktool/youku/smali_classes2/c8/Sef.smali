.class public Lc8/Sef;
.super Lc8/Ref;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/Ref;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lc8/Sef;->c:Lc8/iff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Sef;->c:Lc8/iff;

    const-string/jumbo v1, "{\"result\":true}"

    invoke-interface {v0, v1}, Lc8/iff;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Lc8/iff;)V
    .locals 0

    iput-object p2, p0, Lc8/Sef;->c:Lc8/iff;

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lc8/Sef;->c:Lc8/iff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Sef;->c:Lc8/iff;

    const-string/jumbo v1, "{\"result\":false}"

    invoke-interface {v0, v1}, Lc8/iff;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
