.class public Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
.super Landroid/view/WindowManager$LayoutParams;
.source "StandOutWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uZb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StandOutLayoutParams"
.end annotation


# static fields
.field public static final AUTO_POSITION:I = -0x7fffffff

.field public static final BOTTOM:I = 0x7fffffff

.field public static final CENTER:I = -0x80000000

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x7fffffff

.field public static final TOP:I


# instance fields
.field public maxHeight:I

.field public maxWidth:I

.field public minHeight:I

.field public minWidth:I

.field final synthetic this$0:Lc8/uZb;

.field public threshold:I


# direct methods
.method public constructor <init>(Lc8/uZb;I)V
    .locals 8
    .param p2, "id"    # I

    .prologue
    const/16 v1, 0xc8

    const/4 v7, 0x0

    .line 1106
    iput-object p1, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->this$0:Lc8/uZb;

    .line 1107
    const/16 v3, 0x7d2

    const v4, 0x40020

    const/4 v5, -0x3

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1111
    iget v6, p1, Lc8/uZb;->mFlags:I

    .line 1113
    .local v6, "windowFlags":I
    invoke-virtual {p0, v7}, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->setFocusFlag(Z)V

    .line 1115
    sget v0, Lc8/pZb;->FLAG_WINDOW_EDGE_LIMITS_ENABLE:I

    invoke-static {v6, v0}, Lc8/wZb;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1117
    iget v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->flags:I

    .line 1120
    :cond_0
    iget v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    invoke-direct {p0, p2, v0}, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->getX(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    .line 1121
    iget v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    invoke-direct {p0, p2, v0}, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->getY(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    .line 1123
    const/16 v0, 0x33

    iput v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->gravity:I

    .line 1125
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->threshold:I

    .line 1126
    iput v7, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->minHeight:I

    iput v7, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->minWidth:I

    .line 1127
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->maxHeight:I

    iput v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->maxWidth:I

    .line 1128
    return-void
.end method

.method public constructor <init>(Lc8/uZb;III)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 1136
    invoke-direct {p0, p1, p2}, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;-><init>(Lc8/uZb;I)V

    .line 1137
    iput p3, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    .line 1138
    iput p4, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    .line 1139
    return-void
.end method

.method public constructor <init>(Lc8/uZb;IIIII)V
    .locals 6
    .param p2, "id"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "xpos"    # I
    .param p6, "ypos"    # I

    .prologue
    const v5, 0x7fffffff

    const v3, -0x7fffffff

    const/high16 v4, -0x80000000

    .line 1149
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;-><init>(Lc8/uZb;III)V

    .line 1151
    if-eq p5, v3, :cond_0

    .line 1152
    iput p5, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    .line 1154
    :cond_0
    if-eq p6, v3, :cond_1

    .line 1155
    iput p6, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    .line 1158
    :cond_1
    iget-object v3, p1, Lc8/uZb;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1159
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 1160
    .local v2, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1162
    .local v1, "height":I
    iget v3, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    if-ne v3, v5, :cond_4

    .line 1163
    sub-int v3, v2, p3

    iput v3, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    .line 1168
    :cond_2
    :goto_0
    iget v3, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    if-ne v3, v5, :cond_5

    .line 1169
    sub-int v3, v1, p4

    iput v3, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    .line 1173
    :cond_3
    :goto_1
    return-void

    .line 1164
    :cond_4
    iget v3, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    if-ne v3, v4, :cond_2

    .line 1165
    sub-int v3, v2, p3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    goto :goto_0

    .line 1170
    :cond_5
    iget v3, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    if-ne v3, v4, :cond_3

    .line 1171
    sub-int v3, v1, p4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    goto :goto_1
.end method

.method public constructor <init>(Lc8/uZb;IIIIIII)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "xpos"    # I
    .param p6, "ypos"    # I
    .param p7, "minWidth"    # I
    .param p8, "minHeight"    # I

    .prologue
    .line 1185
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;-><init>(Lc8/uZb;IIIII)V

    .line 1187
    iput p7, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->minWidth:I

    .line 1188
    iput p8, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->minHeight:I

    .line 1189
    return-void
.end method

.method private getX(II)I
    .locals 7
    .param p1, "id"    # I
    .param p2, "width"    # I

    .prologue
    .line 1193
    iget-object v6, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->this$0:Lc8/uZb;

    iget-object v6, v6, Lc8/uZb;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1194
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1196
    .local v1, "displayWidth":I
    sget-object v6, Lc8/uZb;->sWindowCache:Lc8/JZb;

    invoke-virtual {v6}, Lc8/JZb;->size()I

    move-result v4

    .line 1198
    .local v4, "types":I
    mul-int/lit8 v2, v4, 0x64

    .line 1199
    .local v2, "initialX":I
    mul-int/lit8 v5, p1, 0x64

    .line 1200
    .local v5, "variableX":I
    add-int v3, v2, v5

    .line 1202
    .local v3, "rawX":I
    sub-int v6, v1, p2

    rem-int v6, v3, v6

    return v6
.end method

.method private getY(II)I
    .locals 10
    .param p1, "id"    # I
    .param p2, "height"    # I

    .prologue
    .line 1207
    iget-object v7, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->this$0:Lc8/uZb;

    iget-object v7, v7, Lc8/uZb;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1208
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 1209
    .local v2, "displayWidth":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1211
    .local v1, "displayHeight":I
    sget-object v7, Lc8/uZb;->sWindowCache:Lc8/JZb;

    invoke-virtual {v7}, Lc8/JZb;->size()I

    move-result v5

    .line 1213
    .local v5, "types":I
    mul-int/lit8 v3, v5, 0x64

    .line 1214
    .local v3, "initialY":I
    iget v7, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    mul-int/lit8 v8, p1, 0x64

    mul-int/lit16 v8, v8, 0xc8

    iget v9, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    sub-int v9, v2, v9

    div-int/2addr v8, v9

    add-int v6, v7, v8

    .line 1216
    .local v6, "variableY":I
    add-int v4, v3, v6

    .line 1218
    .local v4, "rawY":I
    sub-int v7, v1, p2

    rem-int v7, v4, v7

    return v7
.end method


# virtual methods
.method public setFocusFlag(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .prologue
    .line 1222
    if-eqz p1, :cond_0

    .line 1223
    iget v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->flags:I

    xor-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->flags:I

    .line 1227
    :goto_0
    return-void

    .line 1225
    :cond_0
    iget v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->flags:I

    goto :goto_0
.end method
