.class public final Lc8/PZf;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Lc8/dgg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QZf;->createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 609
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic map(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Lc8/PZf;->map(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
