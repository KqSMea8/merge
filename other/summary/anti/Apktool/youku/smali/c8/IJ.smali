.class public Lc8/IJ;
.super Ljava/lang/Object;
.source "NetworkAnalysis.java"

# interfaces
.implements Lc8/HJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/JJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnalysisProxy"
.end annotation


# instance fields
.field private networkAnalysis:Lc8/HJ;


# direct methods
.method constructor <init>(Lc8/HJ;)V
    .locals 1
    .param p1, "networkAnalysis"    # Lc8/HJ;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/IJ;->networkAnalysis:Lc8/HJ;

    .line 20
    iput-object p1, p0, Lc8/IJ;->networkAnalysis:Lc8/HJ;

    .line 21
    return-void
.end method


# virtual methods
.method public commitFlow(Lc8/GJ;)V
    .locals 1
    .param p1, "flow"    # Lc8/GJ;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/IJ;->networkAnalysis:Lc8/HJ;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lc8/IJ;->networkAnalysis:Lc8/HJ;

    invoke-interface {v0, p1}, Lc8/HJ;->commitFlow(Lc8/GJ;)V

    .line 28
    :cond_0
    return-void
.end method
