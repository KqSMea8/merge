.class public Lc8/wXo;
.super Lc8/HYf;
.source "PagerItemDomObject.java"


# static fields
.field private static final MEASURE_FUNCTION:Lc8/BZf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lc8/vXo;

    invoke-direct {v0}, Lc8/vXo;-><init>()V

    sput-object v0, Lc8/wXo;->MEASURE_FUNCTION:Lc8/BZf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/HYf;-><init>()V

    .line 27
    sget-object v0, Lc8/wXo;->MEASURE_FUNCTION:Lc8/BZf;

    invoke-virtual {p0, v0}, Lc8/wXo;->setMeasureFunction(Lc8/BZf;)V

    .line 28
    return-void
.end method
