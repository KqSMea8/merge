.class public Lc8/bXo;
.super Ljava/lang/Object;
.source "RichTextDomObject.java"

# interfaces
.implements Lc8/BZf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eXo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MeasureFunction"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/eXo;


# direct methods
.method private constructor <init>(Lc8/eXo;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lc8/bXo;->this$0:Lc8/eXo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/eXo;Lc8/ZWo;)V
    .locals 0
    .param p1, "x0"    # Lc8/eXo;
    .param p2, "x1"    # Lc8/ZWo;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lc8/bXo;-><init>(Lc8/eXo;)V

    return-void
.end method

.method private getDesiredHeight(Landroid/text/Layout;)I
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v0, 0x0

    .line 204
    if-nez p1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 209
    .local v2, "lineCount":I
    if-lez v2, :cond_0

    .line 212
    add-int/lit8 v1, v2, -0x1

    .line 213
    .local v1, "line":I
    if-gez v1, :cond_2

    .line 214
    const/4 v1, 0x0

    .line 216
    :cond_2
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    .line 217
    .local v0, "desired":I
    goto :goto_0
.end method

.method private getTextAlign(Lc8/eXo;)Landroid/text/Layout$Alignment;
    .locals 5
    .param p1, "node"    # Lc8/eXo;

    .prologue
    .line 221
    invoke-virtual {p1}, Lc8/eXo;->getStyles()Lc8/PYf;

    move-result-object v3

    const-string/jumbo v4, "textAlign"

    invoke-virtual {v3, v4}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, "textAlign":Ljava/lang/String;
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 223
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 231
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    .local v1, "align":Landroid/text/Layout$Alignment;
    :goto_0
    return-object v1

    .line 226
    .end local v1    # "align":Landroid/text/Layout$Alignment;
    .restart local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_0
    const-string/jumbo v3, "center"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_1
    :goto_1
    move-object v1, v0

    .line 231
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    .restart local v1    # "align":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 228
    .end local v1    # "align":Landroid/text/Layout$Alignment;
    .restart local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_2
    const-string/jumbo v3, "right"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1
.end method


# virtual methods
.method public measure(Lc8/CZf;FLc8/HZf;)V
    .locals 16
    .param p1, "node"    # Lc8/CZf;
    .param p2, "width"    # F
    .param p3, "measureOutput"    # Lc8/HZf;

    .prologue
    .line 174
    move-object/from16 v14, p1

    check-cast v14, Lc8/eXo;

    .line 175
    .local v14, "textDomObject":Lc8/eXo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/bXo;->this$0:Lc8/eXo;

    invoke-virtual {v2}, Lc8/eXo;->createTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 177
    .local v5, "textPaint":Landroid/text/TextPaint;
    invoke-static {v14}, Lc8/eXo;->access$100(Lc8/eXo;)Landroid/text/Spanned;

    move-result-object v2

    if-nez v2, :cond_0

    .line 178
    const/4 v2, 0x0

    move-object/from16 v0, p3

    iput v2, v0, Lc8/HZf;->width:F

    .line 179
    const/4 v2, 0x0

    move-object/from16 v0, p3

    iput v2, v0, Lc8/HZf;->height:F

    .line 201
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static/range {p2 .. p2}, Lc8/yZf;->isUndefined(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget v0, v2, Lc8/DZf;->maxWidth:F

    move/from16 p2, v0

    .line 189
    :cond_1
    move/from16 v0, p2

    float-to-int v6, v0

    .line 191
    .local v6, "wantWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lc8/bXo;->getTextAlign(Lc8/eXo;)Landroid/text/Layout$Alignment;

    move-result-object v7

    .line 192
    .local v7, "align":Landroid/text/Layout$Alignment;
    const/high16 v8, 0x3f800000    # 1.0f

    .line 193
    .local v8, "spacingmult":F
    const/4 v9, 0x0

    .line 194
    .local v9, "spacingadd":F
    const/4 v10, 0x1

    .line 195
    .local v10, "includepad":Z
    move v12, v6

    .line 196
    .local v12, "ellipsizedWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/bXo;->this$0:Lc8/eXo;

    new-instance v2, Lc8/VWo;

    invoke-static {v14}, Lc8/eXo;->access$100(Lc8/eXo;)Landroid/text/Spanned;

    move-result-object v3

    invoke-static {v14}, Lc8/eXo;->access$100(Lc8/eXo;)Landroid/text/Spanned;

    move-result-object v4

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-direct/range {v2 .. v12}, Lc8/VWo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    invoke-static {v15, v2}, Lc8/eXo;->access$202(Lc8/eXo;Lc8/VWo;)Lc8/VWo;

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/bXo;->this$0:Lc8/eXo;

    invoke-static {v2}, Lc8/eXo;->access$200(Lc8/eXo;)Lc8/VWo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/bXo;->this$0:Lc8/eXo;

    invoke-static {v3}, Lc8/eXo;->access$300(Lc8/eXo;)I

    move-result v3

    invoke-virtual {v2, v3}, Lc8/VWo;->setMaxLines(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/bXo;->this$0:Lc8/eXo;

    invoke-static {v2}, Lc8/eXo;->access$200(Lc8/eXo;)Lc8/VWo;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lc8/bXo;->getDesiredHeight(Landroid/text/Layout;)I

    move-result v2

    int-to-float v13, v2

    .line 199
    .local v13, "layoutHeight":F
    move/from16 v0, p2

    move-object/from16 v1, p3

    iput v0, v1, Lc8/HZf;->width:F

    .line 200
    move-object/from16 v0, p3

    iput v13, v0, Lc8/HZf;->height:F

    goto :goto_0
.end method
