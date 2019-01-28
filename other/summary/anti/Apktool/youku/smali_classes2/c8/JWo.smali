.class public Lc8/JWo;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UWo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Div"
.end annotation


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "alignment"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    invoke-static {p1}, Lc8/JWo;->toAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v0

    iput-object v0, p0, Lc8/JWo;->mAlignment:Landroid/text/Layout$Alignment;

    .line 788
    return-void
.end method

.method static synthetic access$800(Lc8/JWo;)Landroid/text/Layout$Alignment;
    .locals 1
    .param p0, "x0"    # Lc8/JWo;

    .prologue
    .line 783
    iget-object v0, p0, Lc8/JWo;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method private static toAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 791
    const-string/jumbo v0, "center"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 796
    :goto_0
    return-object v0

    .line 793
    :cond_0
    const-string/jumbo v0, "right"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 796
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0
.end method
