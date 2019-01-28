.class public Lc8/vVo;
.super Ljava/lang/Object;
.source "CommonMarkInfo.java"


# instance fields
.field public bg_color:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public text_color:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vVo;->text_color:Ljava/lang/String;

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vVo;->bg_color:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lc8/vVo;->type:I

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/vVo;->desc:Ljava/lang/String;

    return-void
.end method
