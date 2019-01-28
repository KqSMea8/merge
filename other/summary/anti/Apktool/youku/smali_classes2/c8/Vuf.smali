.class public final Lc8/Vuf;
.super Ljava/lang/Object;
.source "DefaultMimeTypes.java"

# interfaces
.implements Lc8/Xuf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMyHeader([B)Z
    .locals 1
    .param p1, "header"    # [B

    .prologue
    .line 87
    invoke-static {p1}, Lc8/Zuf;->isBmpHeader([B)Z

    move-result v0

    return v0
.end method

.method public requestMinHeaderSize()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x2

    return v0
.end method
