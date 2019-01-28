.class public Lc8/Pef;
.super Lc8/Ref;


# instance fields
.field public a:Lc8/Tef;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/Tef;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lc8/Ref;-><init>()V

    iput-object p1, p0, Lc8/Pef;->a:Lc8/Tef;

    iput-object p2, p0, Lc8/Pef;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lc8/Pef;->a:Lc8/Tef;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lc8/Uef;

    iget-object v1, p0, Lc8/Pef;->a:Lc8/Tef;

    invoke-direct {v0, v1}, Lc8/Uef;-><init>(Lc8/Tef;)V

    iget-object v1, p0, Lc8/Pef;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Uef;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lc8/Pef;->a:Lc8/Tef;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lc8/iff;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lc8/Qef;

    invoke-direct {v0, p0, p2}, Lc8/Qef;-><init>(Lc8/Pef;Lc8/iff;)V

    iput-object p2, p0, Lc8/Pef;->c:Lc8/iff;

    iput-object v0, p0, Lc8/Pef;->a:Lc8/Tef;

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
