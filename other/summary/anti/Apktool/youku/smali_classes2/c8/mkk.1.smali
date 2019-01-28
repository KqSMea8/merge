.class public Lc8/mkk;
.super Lc8/okk;
.source "ADInfo.java"


# instance fields
.field public CUM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public CUU:Ljava/lang/String;

.field public IE:Ljava/lang/String;

.field public PID:I

.field public SDKID:I

.field public SRC:Ljava/lang/String;

.field public SUS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public adType:I

.field public banner_jump_by:I

.field public content:Ljava/lang/String;

.field public resize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "cardType"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lc8/okk;-><init>(I)V

    .line 101
    return-void
.end method
