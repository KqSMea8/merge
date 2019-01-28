.class public Lc8/LWo;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UWo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput p1, p0, Lc8/LWo;->mLevel:I

    .line 780
    return-void
.end method

.method static synthetic access$900(Lc8/LWo;)I
    .locals 1
    .param p0, "x0"    # Lc8/LWo;

    .prologue
    .line 775
    iget v0, p0, Lc8/LWo;->mLevel:I

    return v0
.end method
