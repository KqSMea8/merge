.class public Lc8/AZf;
.super Ljava/lang/Object;
.source "CSSLayoutContext.java"


# instance fields
.field final measureOutput:Lc8/HZf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lc8/HZf;

    invoke-direct {v0}, Lc8/HZf;-><init>()V

    iput-object v0, p0, Lc8/AZf;->measureOutput:Lc8/HZf;

    return-void
.end method
