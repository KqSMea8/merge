.class public Lc8/JJ;
.super Ljava/lang/Object;
.source "NetworkAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/IJ;
    }
.end annotation


# static fields
.field private static volatile networkAnalysis:Lc8/HJ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lc8/IJ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/IJ;-><init>(Lc8/HJ;)V

    sput-object v0, Lc8/JJ;->networkAnalysis:Lc8/HJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getInstance()Lc8/HJ;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lc8/JJ;->networkAnalysis:Lc8/HJ;

    return-object v0
.end method

.method public static setInstance(Lc8/HJ;)V
    .locals 1
    .param p0, "analysis"    # Lc8/HJ;

    .prologue
    .line 14
    new-instance v0, Lc8/IJ;

    invoke-direct {v0, p0}, Lc8/IJ;-><init>(Lc8/HJ;)V

    sput-object v0, Lc8/JJ;->networkAnalysis:Lc8/HJ;

    .line 15
    return-void
.end method
