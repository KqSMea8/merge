.class public Lc8/hmf;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lc8/imf;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lc8/kmf;


# direct methods
.method constructor <init>(Lc8/kmf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lc8/hmf;->b:Lc8/kmf;

    iput-object p2, p0, Lc8/hmf;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lc8/fmf;)Z
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lc8/hmf;->b:Lc8/kmf;

    invoke-static {v0}, Lc8/kmf;->d(Lc8/kmf;)I

    move-result v0

    iget v1, p1, Lc8/fmf;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lc8/hmf;->a:Ljava/lang/String;

    iget-object v1, p1, Lc8/fmf;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
