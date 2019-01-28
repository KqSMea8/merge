.class public Lc8/zYf;
.super Lc8/HYf;
.source "WXCellDomObject.java"


# static fields
.field static final CELL_MEASURE_FUNCTION:Lc8/BZf;


# instance fields
.field private recyclerDomObject:Lc8/NYf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lc8/yYf;

    invoke-direct {v0}, Lc8/yYf;-><init>()V

    sput-object v0, Lc8/zYf;->CELL_MEASURE_FUNCTION:Lc8/BZf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lc8/HYf;-><init>()V

    .line 98
    sget-object v0, Lc8/zYf;->CELL_MEASURE_FUNCTION:Lc8/BZf;

    invoke-virtual {p0, v0}, Lc8/zYf;->setMeasureFunction(Lc8/BZf;)V

    .line 99
    return-void
.end method


# virtual methods
.method public getRecyclerDomObject()Lc8/NYf;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lc8/zYf;->recyclerDomObject:Lc8/NYf;

    return-object v0
.end method

.method public isSticky()Z
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lc8/zYf;->getStyles()Lc8/PYf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/PYf;->isSticky()Z

    move-result v0

    return v0
.end method

.method public setRecyclerDomObject(Lc8/NYf;)V
    .locals 0
    .param p1, "recyclerDomObject"    # Lc8/NYf;

    .prologue
    .line 114
    iput-object p1, p0, Lc8/zYf;->recyclerDomObject:Lc8/NYf;

    .line 115
    return-void
.end method
