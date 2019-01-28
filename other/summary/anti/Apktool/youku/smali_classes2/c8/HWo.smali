.class public Lc8/HWo;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UWo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEllipsis"
.end annotation


# instance fields
.field private color:I

.field private fontSize:I

.field private text:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    const/4 v0, 0x0

    iput v0, p0, Lc8/HWo;->color:I

    .line 921
    const/4 v0, -0x1

    iput v0, p0, Lc8/HWo;->fontSize:I

    return-void
.end method

.method synthetic constructor <init>(Lc8/DWo;)V
    .locals 0
    .param p1, "x0"    # Lc8/DWo;

    .prologue
    .line 918
    invoke-direct {p0}, Lc8/HWo;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lc8/HWo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/HWo;

    .prologue
    .line 918
    iget-object v0, p0, Lc8/HWo;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lc8/HWo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/HWo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 918
    iput-object p1, p0, Lc8/HWo;->text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lc8/HWo;)I
    .locals 1
    .param p0, "x0"    # Lc8/HWo;

    .prologue
    .line 918
    iget v0, p0, Lc8/HWo;->color:I

    return v0
.end method

.method static synthetic access$1202(Lc8/HWo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/HWo;
    .param p1, "x1"    # I

    .prologue
    .line 918
    iput p1, p0, Lc8/HWo;->color:I

    return p1
.end method

.method static synthetic access$1300(Lc8/HWo;)I
    .locals 1
    .param p0, "x0"    # Lc8/HWo;

    .prologue
    .line 918
    iget v0, p0, Lc8/HWo;->fontSize:I

    return v0
.end method

.method static synthetic access$1302(Lc8/HWo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/HWo;
    .param p1, "x1"    # I

    .prologue
    .line 918
    iput p1, p0, Lc8/HWo;->fontSize:I

    return p1
.end method
