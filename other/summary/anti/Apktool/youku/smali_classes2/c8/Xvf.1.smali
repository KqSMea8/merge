.class public Lc8/Xvf;
.super Ljava/lang/Object;
.source "NonOpMemoryCache.java"

# interfaces
.implements Lc8/Fvf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Fvf",
        "<",
        "Ljava/lang/String;",
        "Lc8/Svf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Lc8/Svf;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/Xvf;->get(Ljava/lang/String;)Lc8/Svf;

    move-result-object v0

    return-object v0
.end method

.method public hotPercent()F
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public maxSize()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic put(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 6
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lc8/Svf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Xvf;->put(ILjava/lang/String;Lc8/Svf;)Z

    move-result v0

    return v0
.end method

.method public put(ILjava/lang/String;Lc8/Svf;)Z
    .locals 1
    .param p1, "priority"    # I
    .param p2, "newKey"    # Ljava/lang/String;
    .param p3, "newValue"    # Lc8/Svf;

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 6
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lc8/Svf;

    invoke-virtual {p0, p1, p2}, Lc8/Xvf;->put(Ljava/lang/String;Lc8/Svf;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Lc8/Svf;)Z
    .locals 1
    .param p1, "newKey"    # Ljava/lang/String;
    .param p2, "newValue"    # Lc8/Svf;

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/String;)Lc8/Svf;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/Xvf;->remove(Ljava/lang/String;)Lc8/Svf;

    move-result-object v0

    return-object v0
.end method

.method public resize(IF)V
    .locals 0
    .param p1, "maxSize"    # I
    .param p2, "hotPercent"    # F

    .prologue
    .line 31
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public trimTo(I)Z
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
