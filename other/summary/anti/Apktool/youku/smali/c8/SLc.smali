.class public abstract Lc8/SLc;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lc8/vLc;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/SLc;->b:Z

    return-void
.end method


# virtual methods
.method public final f()Lc8/vLc;
    .locals 1

    iget-object v0, p0, Lc8/SLc;->a:Lc8/vLc;

    return-object v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/SLc;->b:Z

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lc8/SLc;->b:Z

    return v0
.end method
