.class public Lc8/RK;
.super Ljava/lang/Object;
.source "SchemeGuesser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/QK;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private final guessSchemeMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/RK;->guessSchemeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/RK;->enabled:Z

    .line 19
    return-void
.end method

.method public static getInstance()Lc8/RK;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lc8/QK;->instance:Lc8/RK;

    return-object v0
.end method


# virtual methods
.method public guessScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-boolean v1, p0, Lc8/RK;->enabled:Z

    if-nez v1, :cond_1

    .line 29
    const/4 v0, 0x0

    .line 37
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    iget-object v1, p0, Lc8/RK;->guessSchemeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    .local v0, "scheme":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 34
    const-string/jumbo v0, "https"

    .line 35
    iget-object v1, p0, Lc8/RK;->guessSchemeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onSslFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/RK;->guessSchemeMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "http"

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lc8/RK;->enabled:Z

    .line 25
    return-void
.end method
