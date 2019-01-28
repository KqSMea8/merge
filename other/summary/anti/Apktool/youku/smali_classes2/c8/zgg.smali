.class public final Lc8/zgg;
.super Ljava/lang/Object;
.source "WXResourceUtils.java"

# interfaces
.implements Lc8/dgg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Bgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/dgg",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xff

    .line 50
    invoke-static {p1, v1}, Lc8/Dgg;->parseUnitOrPercent(Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, "color":I
    if-gez v0, :cond_1

    .line 52
    const/4 v0, 0x0

    .line 56
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 53
    :cond_1
    if-le v0, v1, :cond_0

    .line 54
    const/16 v0, 0xff

    goto :goto_0
.end method

.method public bridge synthetic map(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lc8/zgg;->map(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
