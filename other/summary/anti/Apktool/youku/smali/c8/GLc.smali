.class public final Lc8/GLc;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/ELc;


# instance fields
.field final synthetic a:Lc8/tLc;

.field final synthetic b:Lc8/FLc;


# direct methods
.method constructor <init>(Lc8/FLc;Lc8/tLc;)V
    .locals 0

    iput-object p1, p0, Lc8/GLc;->b:Lc8/FLc;

    iput-object p2, p0, Lc8/GLc;->a:Lc8/tLc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/GLc;->a:Lc8/tLc;

    invoke-virtual {v0}, Lc8/tLc;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lc8/uLc;
    .locals 1

    iget-object v0, p0, Lc8/GLc;->b:Lc8/FLc;

    invoke-static {v0}, Lc8/FLc;->a(Lc8/FLc;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/KLc;->a(Landroid/content/Context;)Lc8/KLc;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lc8/tLc;
    .locals 1

    iget-object v0, p0, Lc8/GLc;->a:Lc8/tLc;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lc8/GLc;->a:Lc8/tLc;

    invoke-virtual {v0}, Lc8/tLc;->c()Z

    move-result v0

    return v0
.end method
