.class public Lc8/lin;
.super Ljava/lang/Object;
.source "CheckProtocolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/min;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolItem"
.end annotation


# instance fields
.field public protocol:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lc8/lin;->type:I

    return-void
.end method
