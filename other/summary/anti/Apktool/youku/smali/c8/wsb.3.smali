.class public Lc8/wsb;
.super Ljava/lang/Object;
.source "ExpressionOrientationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueHolder"
.end annotation


# instance fields
.field x:D

.field y:D

.field z:D


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-wide p1, p0, Lc8/wsb;->x:D

    .line 321
    iput-wide p3, p0, Lc8/wsb;->y:D

    .line 322
    iput-wide p5, p0, Lc8/wsb;->z:D

    .line 323
    return-void
.end method
