.class public Lc8/DVo;
.super Ljava/lang/Object;
.source "HomeExtendedAreaInfo.java"


# static fields
.field public static final JUMP_TYPE_TO_BIG_WORD:Ljava/lang/String; = "jump_to_big_word"

.field public static final JUMP_TYPE_TO_PGC:Ljava/lang/String; = "jump_to_pgc"

.field public static final JUMP_TYPE_TO_PLAY_MENU:Ljava/lang/String; = "jump_to_play_menu"

.field public static final WORD_LAYOUT_ONE:I = 0x1

.field public static final WORD_LAYOUT_SIX:I = 0x3

.field public static final WORD_LAYOUT_THREE:I = 0x2


# instance fields
.field public cn:Ljava/lang/String;

.field public column_id:I

.field public column_pos:I

.field public homeExtendedAreaDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/CVo;",
            ">;"
        }
    .end annotation
.end field

.field public layout:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/DVo;->type:Ljava/lang/String;

    .line 17
    iput v1, p0, Lc8/DVo;->layout:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/DVo;->homeExtendedAreaDatas:Ljava/util/ArrayList;

    .line 21
    iput v1, p0, Lc8/DVo;->column_id:I

    .line 23
    iput v1, p0, Lc8/DVo;->column_pos:I

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/DVo;->cn:Ljava/lang/String;

    return-void
.end method
