.class public Lc8/Izm;
.super Ljava/lang/Object;
.source "PreAdTimes.java"


# static fields
.field public static TIMESTOHINT:I

.field public static times:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput v0, Lc8/Izm;->times:I

    .line 9
    const/16 v0, 0x8

    sput v0, Lc8/Izm;->TIMESTOHINT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
