.class public Lc8/nib;
.super Ljava/lang/Object;
.source "RequestCode.java"


# static fields
.field public static OPEN_DOUBLE_CHECK:I

.field public static OPEN_H5_LOGIN:I

.field public static OPEN_H5_UNBIND:I

.field public static OPEN_QR_LOGIN:I

.field public static OPEN_QR_LOGIN_CONFIRM:I

.field public static OPEN_TAOBAO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const v0, 0xea5b

    sput v0, Lc8/nib;->OPEN_TAOBAO:I

    .line 5
    const v0, 0xea5c

    sput v0, Lc8/nib;->OPEN_H5_LOGIN:I

    .line 6
    const v0, 0xea5d

    sput v0, Lc8/nib;->OPEN_H5_UNBIND:I

    .line 7
    const v0, 0xea65

    sput v0, Lc8/nib;->OPEN_DOUBLE_CHECK:I

    .line 9
    const v0, 0xea61

    sput v0, Lc8/nib;->OPEN_QR_LOGIN:I

    .line 10
    const v0, 0xea62

    sput v0, Lc8/nib;->OPEN_QR_LOGIN_CONFIRM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
