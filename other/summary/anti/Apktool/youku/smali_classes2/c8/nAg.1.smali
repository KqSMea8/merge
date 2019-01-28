.class public Lc8/nAg;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/Fzg;


# instance fields
.field private a:Lc8/Fzg;

.field private b:Lc8/Fzg;


# direct methods
.method public constructor <init>(Lc8/Fzg;Lc8/Fzg;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/nAg;->a:Lc8/Fzg;

    iput-object v0, p0, Lc8/nAg;->b:Lc8/Fzg;

    iput-object p1, p0, Lc8/nAg;->a:Lc8/Fzg;

    iput-object p2, p0, Lc8/nAg;->b:Lc8/Fzg;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc8/nAg;->a:Lc8/Fzg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nAg;->a:Lc8/Fzg;

    invoke-interface {v0, p1}, Lc8/Fzg;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lc8/nAg;->b:Lc8/Fzg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/nAg;->b:Lc8/Fzg;

    invoke-interface {v0, p1}, Lc8/Fzg;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lc8/nAg;->a:Lc8/Fzg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nAg;->a:Lc8/Fzg;

    invoke-interface {v0, p1, p2}, Lc8/Fzg;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lc8/nAg;->b:Lc8/Fzg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/nAg;->b:Lc8/Fzg;

    invoke-interface {v0, p1, p2}, Lc8/Fzg;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
