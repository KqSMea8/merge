.class public Lc8/KWo;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UWo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Font"
.end annotation


# instance fields
.field mColor:Ljava/lang/String;

.field mFace:Ljava/lang/String;

.field mSize:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "face"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-object p1, p0, Lc8/KWo;->mColor:Ljava/lang/String;

    .line 760
    iput-object p2, p0, Lc8/KWo;->mFace:Ljava/lang/String;

    .line 761
    iput p3, p0, Lc8/KWo;->mSize:I

    .line 762
    return-void
.end method
