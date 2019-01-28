.class public abstract Lc8/Usg;
.super Ljava/lang/Object;
.source "BaseConnection.java"

# interfaces
.implements Lc8/otg;


# instance fields
.field final a:Lc8/ktg;

.field volatile b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/ltg;",
            ">;"
        }
    .end annotation
.end field

.field final c:I

.field d:Lc8/vtg;


# direct methods
.method constructor <init>(Lc8/vtg;Lc8/ktg;)V
    .locals 1
    .param p1, "config"    # Lc8/vtg;
    .param p2, "target"    # Lc8/ktg;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/Usg;->d:Lc8/vtg;

    .line 25
    iput-object p2, p0, Lc8/Usg;->a:Lc8/ktg;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lc8/Usg;->c:I

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lc8/ktg;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Usg;->a:Lc8/ktg;

    return-object v0
.end method

.method public a(Lc8/ltg;)V
    .locals 1
    .param p1, "listener"    # Lc8/ltg;

    .prologue
    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Usg;->b:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method

.method e()Lc8/ltg;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lc8/Usg;->b:Ljava/lang/ref/WeakReference;

    .line 41
    .local v0, "weak":Ljava/lang/ref/WeakReference;
    if-nez v0, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 44
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/ltg;

    goto :goto_0
.end method
