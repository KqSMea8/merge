.class public Lc8/Fyo;
.super Ljava/lang/Object;
.source "CornerUtil.java"


# static fields
.field public static final TYPEV_VIP_FOUR:I = 0x4

.field public static final TYPE_ACTIVITY_TWO:I = 0x2

.field public static final TYPE_OPERATION_THREE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCornerMask(Lc8/aWc;)V
    .locals 0
    .param p0, "view"    # Lc8/aWc;

    .prologue
    .line 41
    invoke-static {p0}, Lc8/Mzo;->clearCornerMask(Lc8/aWc;)V

    .line 42
    return-void
.end method

.method public static setCornerMark(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "view"    # Lc8/aWc;

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, Lc8/Mzo;->setCornerMark(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;)V

    .line 38
    return-void
.end method

.method public static setCornerMarkData(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "view"    # Lc8/aWc;

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3}, Lc8/Mzo;->setCornerMarkData(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;)V

    .line 34
    return-void
.end method
