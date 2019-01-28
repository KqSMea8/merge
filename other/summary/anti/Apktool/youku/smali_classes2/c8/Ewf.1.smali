.class public Lc8/Ewf;
.super Ljava/lang/Object;
.source "BlurBitmapProcessor.java"

# interfaces
.implements Lc8/ovf;


# static fields
.field private static DEFAULT_DOWN_SAMPLING:I

.field private static RS_MAX_RADIUS:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRadius:I

.field private final mSampling:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x19

    sput v0, Lc8/Ewf;->RS_MAX_RADIUS:I

    .line 31
    const/4 v0, 0x1

    sput v0, Lc8/Ewf;->DEFAULT_DOWN_SAMPLING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget v0, Lc8/Ewf;->RS_MAX_RADIUS:I

    sget v1, Lc8/Ewf;->DEFAULT_DOWN_SAMPLING:I

    invoke-direct {p0, p1, v0, v1}, Lc8/Ewf;-><init>(Landroid/content/Context;II)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I

    .prologue
    .line 42
    sget v0, Lc8/Ewf;->DEFAULT_DOWN_SAMPLING:I

    invoke-direct {p0, p1, p2, v0}, Lc8/Ewf;-><init>(Landroid/content/Context;II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I
    .param p3, "sampling"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-lez p2, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "blur radius must be greater than zero"

    invoke-static {v0, v3}, Lc8/LNf;->checkArgument(ZLjava/lang/Object;)V

    .line 47
    if-lez p3, :cond_1

    :goto_1
    const-string/jumbo v0, "blur sampling must be greater than zero"

    invoke-static {v1, v0}, Lc8/LNf;->checkArgument(ZLjava/lang/Object;)V

    .line 48
    iput-object p1, p0, Lc8/Ewf;->mContext:Landroid/content/Context;

    .line 49
    iput p2, p0, Lc8/Ewf;->mRadius:I

    .line 50
    iput p3, p0, Lc8/Ewf;->mSampling:I

    .line 51
    return-void

    :cond_0
    move v0, v2

    .line 46
    goto :goto_0

    :cond_1
    move v1, v2

    .line 47
    goto :goto_1
.end method

.method public static blurWithJava(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 42
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "canReuseInBitmap"    # Z

    .prologue
    .line 160
    if-eqz p2, :cond_0

    .line 161
    move-object/from16 v2, p0

    .line 166
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-gtz p1, :cond_1

    .line 167
    const/4 v2, 0x0

    .line 361
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v2

    .line 163
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 171
    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 173
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 174
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 176
    add-int/lit8 v36, v5, -0x1

    .line 177
    .local v36, "wm":I
    add-int/lit8 v21, v9, -0x1

    .line 178
    .local v21, "hm":I
    mul-int v35, v5, v9

    .line 179
    .local v35, "wh":I
    add-int v4, p1, p1

    add-int/lit8 v14, v4, 0x1

    .line 181
    .local v14, "div":I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 182
    .local v24, "r":[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 183
    .local v17, "g":[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .line 185
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 187
    .local v34, "vmin":[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 188
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 189
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 190
    .local v16, "dv":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    .line 191
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 190
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 194
    :cond_2
    const/16 v39, 0x0

    .local v39, "yi":I
    move/from16 v41, v39

    .line 196
    .local v41, "yw":I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .line 201
    .local v31, "stack":[[I
    add-int/lit8 v25, p1, 0x1

    .line 205
    .local v25, "r1":I
    const/16 v38, 0x0

    .local v38, "y":I
    :goto_3
    move/from16 v0, v38

    if-ge v0, v9, :cond_7

    .line 206
    const/4 v13, 0x0

    .local v13, "bsum":I
    move/from16 v20, v13

    .local v20, "gsum":I
    move/from16 v29, v13

    .local v29, "rsum":I
    move v12, v13

    .local v12, "boutsum":I
    move/from16 v19, v13

    .local v19, "goutsum":I
    move/from16 v28, v13

    .local v28, "routsum":I
    move v11, v13

    .local v11, "binsum":I
    move/from16 v18, v13

    .local v18, "ginsum":I
    move/from16 v27, v13

    .line 207
    .local v27, "rinsum":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_4

    .line 208
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v39

    aget v23, v3, v4

    .line 209
    .local v23, "p":I
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 210
    .local v30, "sir":[I
    const/4 v4, 0x0

    shr-int/lit8 v6, v23, 0x10

    and-int/lit16 v6, v6, 0xff

    aput v6, v30, v4

    .line 211
    const/4 v4, 0x1

    shr-int/lit8 v6, v23, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v30, v4

    .line 212
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 213
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 214
    .local v26, "rbs":I
    const/4 v4, 0x0

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 215
    const/4 v4, 0x1

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 216
    const/4 v4, 0x2

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 217
    if-lez v22, :cond_3

    .line 218
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 219
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 220
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 207
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 222
    :cond_3
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 223
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 224
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_5

    .line 227
    .end local v23    # "p":I
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_4
    move/from16 v32, p1

    .line 229
    .local v32, "stackpointer":I
    const/16 v37, 0x0

    .local v37, "x":I
    :goto_6
    move/from16 v0, v37

    if-ge v0, v5, :cond_6

    .line 231
    aget v4, v16, v29

    aput v4, v24, v39

    .line 232
    aget v4, v16, v20

    aput v4, v17, v39

    .line 233
    aget v4, v16, v13

    aput v4, v10, v39

    .line 235
    sub-int v29, v29, v28

    .line 236
    sub-int v20, v20, v19

    .line 237
    sub-int/2addr v13, v12

    .line 239
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 240
    .local v33, "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 242
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 243
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 244
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 246
    if-nez v38, :cond_5

    .line 247
    add-int v4, v37, p1

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v34, v37

    .line 249
    :cond_5
    aget v4, v34, v37

    add-int v4, v4, v41

    aget v23, v3, v4

    .line 251
    .restart local v23    # "p":I
    const/4 v4, 0x0

    shr-int/lit8 v6, v23, 0x10

    and-int/lit16 v6, v6, 0xff

    aput v6, v30, v4

    .line 252
    const/4 v4, 0x1

    shr-int/lit8 v6, v23, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v30, v4

    .line 253
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 255
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 256
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 257
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 259
    add-int v29, v29, v27

    .line 260
    add-int v20, v20, v18

    .line 261
    add-int/2addr v13, v11

    .line 263
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 264
    rem-int v4, v32, v14

    aget-object v30, v31, v4

    .line 266
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 267
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 268
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 270
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 271
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 272
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 274
    add-int/lit8 v39, v39, 0x1

    .line 229
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_6

    .line 276
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_6
    add-int v41, v41, v5

    .line 205
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_3

    .line 278
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v37    # "x":I
    :cond_7
    const/16 v37, 0x0

    .restart local v37    # "x":I
    :goto_7
    move/from16 v0, v37

    if-ge v0, v5, :cond_d

    .line 279
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    move/from16 v20, v13

    .restart local v20    # "gsum":I
    move/from16 v29, v13

    .restart local v29    # "rsum":I
    move v12, v13

    .restart local v12    # "boutsum":I
    move/from16 v19, v13

    .restart local v19    # "goutsum":I
    move/from16 v28, v13

    .restart local v28    # "routsum":I
    move v11, v13

    .restart local v11    # "binsum":I
    move/from16 v18, v13

    .restart local v18    # "ginsum":I
    move/from16 v27, v13

    .line 280
    .restart local v27    # "rinsum":I
    move/from16 v0, p1

    neg-int v4, v0

    mul-int v40, v4, v5

    .line 281
    .local v40, "yp":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_8
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_a

    .line 282
    const/4 v4, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v39, v4, v37

    .line 284
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 286
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v6, v24, v39

    aput v6, v30, v4

    .line 287
    const/4 v4, 0x1

    aget v6, v17, v39

    aput v6, v30, v4

    .line 288
    const/4 v4, 0x2

    aget v6, v10, v39

    aput v6, v30, v4

    .line 290
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 292
    .restart local v26    # "rbs":I
    aget v4, v24, v39

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 293
    aget v4, v17, v39

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 294
    aget v4, v10, v39

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 296
    if-lez v22, :cond_9

    .line 297
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 298
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 299
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 306
    :goto_9
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 307
    add-int v40, v40, v5

    .line 281
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 301
    :cond_9
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 302
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 303
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_9

    .line 310
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_a
    move/from16 v39, v37

    .line 311
    move/from16 v32, p1

    .line 312
    .restart local v32    # "stackpointer":I
    const/16 v38, 0x0

    :goto_a
    move/from16 v0, v38

    if-ge v0, v9, :cond_c

    .line 314
    const/high16 v4, -0x1000000

    aget v6, v3, v39

    and-int/2addr v4, v6

    aget v6, v16, v29

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v39

    .line 316
    sub-int v29, v29, v28

    .line 317
    sub-int v20, v20, v19

    .line 318
    sub-int/2addr v13, v12

    .line 320
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 321
    .restart local v33    # "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 323
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 324
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 325
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 327
    if-nez v37, :cond_b

    .line 328
    add-int v4, v38, v25

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v34, v38

    .line 330
    :cond_b
    aget v4, v34, v38

    add-int v23, v37, v4

    .line 332
    .restart local v23    # "p":I
    const/4 v4, 0x0

    aget v6, v24, v23

    aput v6, v30, v4

    .line 333
    const/4 v4, 0x1

    aget v6, v17, v23

    aput v6, v30, v4

    .line 334
    const/4 v4, 0x2

    aget v6, v10, v23

    aput v6, v30, v4

    .line 336
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 337
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 338
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 340
    add-int v29, v29, v27

    .line 341
    add-int v20, v20, v18

    .line 342
    add-int/2addr v13, v11

    .line 344
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 345
    aget-object v30, v31, v32

    .line 347
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 348
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 349
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 351
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 352
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 353
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 355
    add-int v39, v39, v5

    .line 312
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_a

    .line 278
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_c
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_7

    .line 359
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v40    # "yp":I
    :cond_d
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_1
.end method

.method public static blurWithRenderScript(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSRuntimeException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, "rs":Landroid/renderscript/RenderScript;
    const/4 v1, 0x0

    .line 97
    .local v1, "input":Landroid/renderscript/Allocation;
    const/4 v2, 0x0

    .line 98
    .local v2, "output":Landroid/renderscript/Allocation;
    const/4 v0, 0x0

    .line 100
    .local v0, "blur":Landroid/renderscript/ScriptIntrinsicBlur;
    :try_start_0
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    .line 101
    new-instance v4, Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-direct {v4}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    invoke-virtual {v3, v4}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 102
    sget-object v4, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v5, 0x1

    invoke-static {v3, p1, v4, v5}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 105
    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 108
    int-to-float v4, p2

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 109
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 110
    invoke-virtual {v2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->destroy()V

    .line 115
    :cond_0
    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 118
    :cond_1
    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 121
    :cond_2
    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 126
    :cond_3
    return-object p1

    .line 112
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 113
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->destroy()V

    .line 115
    :cond_4
    if-eqz v1, :cond_5

    .line 116
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 118
    :cond_5
    if-eqz v2, :cond_6

    .line 119
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 121
    :cond_6
    if-eqz v0, :cond_7

    .line 122
    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    :cond_7
    throw v4
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Ewf;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Ewf;->mSampling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/lang/String;Lc8/nvf;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "uri"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bitmapSupplier"    # Lc8/nvf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "source"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 61
    .local v9, "width":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 62
    .local v3, "height":I
    iget v10, p0, Lc8/Ewf;->mSampling:I

    div-int v7, v9, v10

    .line 63
    .local v7, "scaledWidth":I
    iget v10, p0, Lc8/Ewf;->mSampling:I

    div-int v6, v3, v10

    .line 68
    .local v6, "scaledHeight":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    .line 65
    :goto_0
    move-object/from16 v0, p2

    invoke-interface {v0, v7, v6, v10}, Lc8/nvf;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 71
    .local v8, "target":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/high16 v10, 0x3f800000    # 1.0f

    iget v11, p0, Lc8/Ewf;->mSampling:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lc8/Ewf;->mSampling:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 73
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 74
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 75
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v10, v11, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 77
    iget v10, p0, Lc8/Ewf;->mRadius:I

    invoke-static {v8, v10}, Lc8/Jwf;->blurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 79
    .local v5, "ret":Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x12

    if-lt v10, v11, :cond_0

    iget v10, p0, Lc8/Ewf;->mRadius:I

    sget v11, Lc8/Ewf;->RS_MAX_RADIUS:I

    if-gt v10, v11, :cond_0

    .line 81
    :try_start_0
    iget-object v10, p0, Lc8/Ewf;->mContext:Landroid/content/Context;

    iget v11, p0, Lc8/Ewf;->mRadius:I

    invoke-static {v10, v8, v11}, Lc8/Ewf;->blurWithRenderScript(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 86
    :cond_0
    :goto_1
    if-nez v5, :cond_1

    .line 87
    iget v10, p0, Lc8/Ewf;->mRadius:I

    const/4 v11, 0x1

    invoke-static {v8, v10, v11}, Lc8/Ewf;->blurWithJava(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 89
    :cond_1
    return-object v5

    .line 68
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "ret":Landroid/graphics/Bitmap;
    .end local v8    # "target":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v10, Lc8/ouf;->CONFIG:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 82
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "paint":Landroid/graphics/Paint;
    .restart local v5    # "ret":Landroid/graphics/Bitmap;
    .restart local v8    # "target":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 83
    .local v2, "ex":Landroid/renderscript/RSRuntimeException;
    const-string/jumbo v10, "Effects4Phenix"

    const-string/jumbo v11, "render script blur error=%s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-static {v10, v11, v12}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
