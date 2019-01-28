.class public Lc8/TOf;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachInfo"
.end annotation


# instance fields
.field id:I

.field priority:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "priority"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lc8/TOf;->id:I

    .line 33
    iput p2, p0, Lc8/TOf;->priority:I

    .line 34
    return-void
.end method
