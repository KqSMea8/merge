.class public Lc8/tyf;
.super Ljava/lang/Object;
.source "ProduceType.java"


# static fields
.field public static final ALL_IN:I = 0x2

.field public static final PART_IN:I = 0x1

.field public static final SKIP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 15
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 16
    const-string/jumbo v0, "PART_IN"

    .line 21
    :goto_0
    return-object v0

    .line 18
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 19
    const-string/jumbo v0, "ALL_IN"

    goto :goto_0

    .line 21
    :cond_1
    const-string/jumbo v0, "SKIP"

    goto :goto_0
.end method
