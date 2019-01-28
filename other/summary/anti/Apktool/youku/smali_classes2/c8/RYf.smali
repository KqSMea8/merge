.class public Lc8/RYf;
.super Lc8/HYf;
.source "WXSwitchDomObject.java"


# static fields
.field private static final SWITCH_MEASURE_FUNCTION:Lc8/BZf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lc8/QYf;

    invoke-direct {v0}, Lc8/QYf;-><init>()V

    sput-object v0, Lc8/RYf;->SWITCH_MEASURE_FUNCTION:Lc8/BZf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lc8/HYf;-><init>()V

    .line 55
    sget-object v0, Lc8/RYf;->SWITCH_MEASURE_FUNCTION:Lc8/BZf;

    invoke-virtual {p0, v0}, Lc8/RYf;->setMeasureFunction(Lc8/BZf;)V

    .line 56
    return-void
.end method
