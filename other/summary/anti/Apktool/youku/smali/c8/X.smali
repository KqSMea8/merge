.class public Lc8/X;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NONE:I = -0x1


# instance fields
.field private ROW_SIZE:I

.field private candidate:Lc8/gb;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field private final mCache:Lc8/Z;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Lc8/Y;


# direct methods
.method constructor <init>(Lc8/Y;Lc8/Z;)V
    .locals 3
    .param p1, "arrayRow"    # Lc8/Y;
    .param p2, "cache"    # Lc8/Z;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v2, p0, Lc8/X;->currentSize:I

    .line 47
    const/16 v0, 0x8

    iput v0, p0, Lc8/X;->ROW_SIZE:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/X;->candidate:Lc8/gb;

    .line 52
    iget v0, p0, Lc8/X;->ROW_SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/X;->mArrayIndices:[I

    .line 55
    iget v0, p0, Lc8/X;->ROW_SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/X;->mArrayNextIndices:[I

    .line 58
    iget v0, p0, Lc8/X;->ROW_SIZE:I

    new-array v0, v0, [F

    iput-object v0, p0, Lc8/X;->mArrayValues:[F

    .line 61
    iput v1, p0, Lc8/X;->mHead:I

    .line 77
    iput v1, p0, Lc8/X;->mLast:I

    .line 80
    iput-boolean v2, p0, Lc8/X;->mDidFillOnce:Z

    .line 100
    iput-object p1, p0, Lc8/X;->mRow:Lc8/Y;

    .line 101
    iput-object p2, p0, Lc8/X;->mCache:Lc8/Z;

    .line 107
    return-void
.end method


# virtual methods
.method public final add(Lc8/gb;F)V
    .locals 11
    .param p1, "variable"    # Lc8/gb;
    .param p2, "value"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 212
    cmpl-float v6, p2, v8

    if-nez v6, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget v6, p0, Lc8/X;->mHead:I

    if-ne v6, v9, :cond_2

    .line 217
    iput v10, p0, Lc8/X;->mHead:I

    .line 218
    iget-object v6, p0, Lc8/X;->mArrayValues:[F

    iget v7, p0, Lc8/X;->mHead:I

    aput p2, v6, v7

    .line 219
    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    iget v7, p0, Lc8/X;->mHead:I

    iget v8, p1, Lc8/gb;->id:I

    aput v8, v6, v7

    .line 220
    iget-object v6, p0, Lc8/X;->mArrayNextIndices:[I

    iget v7, p0, Lc8/X;->mHead:I

    aput v9, v6, v7

    .line 221
    iget v6, p0, Lc8/X;->currentSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lc8/X;->currentSize:I

    .line 222
    iget-boolean v6, p0, Lc8/X;->mDidFillOnce:Z

    if-nez v6, :cond_0

    .line 224
    iget v6, p0, Lc8/X;->mLast:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lc8/X;->mLast:I

    goto :goto_0

    .line 228
    :cond_2
    iget v2, p0, Lc8/X;->mHead:I

    .line 229
    .local v2, "current":I
    const/4 v5, -0x1

    .line 230
    .local v5, "previous":I
    const/4 v1, 0x0

    .line 231
    .local v1, "counter":I
    :goto_1
    if-eq v2, v9, :cond_7

    iget v6, p0, Lc8/X;->currentSize:I

    if-ge v1, v6, :cond_7

    .line 232
    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    aget v4, v6, v2

    .line 233
    .local v4, "idx":I
    iget v6, p1, Lc8/gb;->id:I

    if-ne v4, v6, :cond_5

    .line 234
    iget-object v6, p0, Lc8/X;->mArrayValues:[F

    aget v7, v6, v2

    add-float/2addr v7, p2

    aput v7, v6, v2

    .line 236
    iget-object v6, p0, Lc8/X;->mArrayValues:[F

    aget v6, v6, v2

    cmpl-float v6, v6, v8

    if-nez v6, :cond_0

    .line 237
    iget v6, p0, Lc8/X;->mHead:I

    if-ne v2, v6, :cond_4

    .line 238
    iget-object v6, p0, Lc8/X;->mArrayNextIndices:[I

    aget v6, v6, v2

    iput v6, p0, Lc8/X;->mHead:I

    .line 242
    :goto_2
    iget-object v6, p0, Lc8/X;->mCache:Lc8/Z;

    iget-object v6, v6, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    aget-object v6, v6, v4

    iget-object v7, p0, Lc8/X;->mRow:Lc8/Y;

    invoke-virtual {v6, v7}, Lc8/gb;->removeClientEquation(Lc8/Y;)V

    .line 243
    iget-boolean v6, p0, Lc8/X;->mDidFillOnce:Z

    if-eqz v6, :cond_3

    .line 245
    iput v2, p0, Lc8/X;->mLast:I

    .line 247
    :cond_3
    iget v6, p0, Lc8/X;->currentSize:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lc8/X;->currentSize:I

    goto :goto_0

    .line 240
    :cond_4
    iget-object v6, p0, Lc8/X;->mArrayNextIndices:[I

    iget-object v7, p0, Lc8/X;->mArrayNextIndices:[I

    aget v7, v7, v2

    aput v7, v6, v5

    goto :goto_2

    .line 251
    :cond_5
    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    aget v6, v6, v2

    iget v7, p1, Lc8/gb;->id:I

    if-ge v6, v7, :cond_6

    .line 252
    move v5, v2

    .line 254
    :cond_6
    iget-object v6, p0, Lc8/X;->mArrayNextIndices:[I

    aget v2, v6, v2

    add-int/lit8 v1, v1, 0x1

    .line 255
    goto :goto_1

    .line 260
    .end local v4    # "idx":I
    :cond_7
    iget v6, p0, Lc8/X;->mLast:I

    add-int/lit8 v0, v6, 0x1

    .line 261
    .local v0, "availableIndice":I
    iget-boolean v6, p0, Lc8/X;->mDidFillOnce:Z

    if-eqz v6, :cond_8

    .line 264
    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    iget v7, p0, Lc8/X;->mLast:I

    aget v6, v6, v7

    if-ne v6, v9, :cond_c

    .line 265
    iget v0, p0, Lc8/X;->mLast:I

    .line 270
    :cond_8
    :goto_3
    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    array-length v6, v6

    if-lt v0, v6, :cond_9

    .line 271
    iget v6, p0, Lc8/X;->currentSize:I

    iget-object v7, p0, Lc8/X;->mArrayIndices:[I

    array-length v7, v7

    if-ge v6, v7, :cond_9

    .line 273
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    array-length v6, v6

    if-ge v3, v6, :cond_9

    .line 274
    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    aget v6, v6, v3

    if-ne v6, v9, :cond_d

    .line 275
    move v0, v3

    .line 282
    .end local v3    # "i":I
    :cond_9
    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    array-length v6, v6

    if-lt v0, v6, :cond_a

    .line 283
    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    array-length v0, v6

    .line 284
    iget v6, p0, Lc8/X;->ROW_SIZE:I

    shl-int/lit8 v6, v6, 0x1

    iput v6, p0, Lc8/X;->ROW_SIZE:I

    .line 285
    iput-boolean v10, p0, Lc8/X;->mDidFillOnce:Z

    .line 286
    add-int/lit8 v6, v0, -0x1

    iput v6, p0, Lc8/X;->mLast:I

    .line 287
    iget-object v6, p0, Lc8/X;->mArrayValues:[F

    iget v7, p0, Lc8/X;->ROW_SIZE:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    iput-object v6, p0, Lc8/X;->mArrayValues:[F

    .line 288
    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    iget v7, p0, Lc8/X;->ROW_SIZE:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Lc8/X;->mArrayIndices:[I

    .line 289
    iget-object v6, p0, Lc8/X;->mArrayNextIndices:[I

    iget v7, p0, Lc8/X;->ROW_SIZE:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Lc8/X;->mArrayNextIndices:[I

    .line 293
    :cond_a
    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    iget v7, p1, Lc8/gb;->id:I

    aput v7, v6, v0

    .line 294
    iget-object v6, p0, Lc8/X;->mArrayValues:[F

    aput p2, v6, v0

    .line 295
    if-eq v5, v9, :cond_e

    .line 296
    iget-object v6, p0, Lc8/X;->mArrayNextIndices:[I

    iget-object v7, p0, Lc8/X;->mArrayNextIndices:[I

    aget v7, v7, v5

    aput v7, v6, v0

    .line 297
    iget-object v6, p0, Lc8/X;->mArrayNextIndices:[I

    aput v0, v6, v5

    .line 302
    :goto_5
    iget v6, p0, Lc8/X;->currentSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lc8/X;->currentSize:I

    .line 303
    iget-boolean v6, p0, Lc8/X;->mDidFillOnce:Z

    if-nez v6, :cond_b

    .line 305
    iget v6, p0, Lc8/X;->mLast:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lc8/X;->mLast:I

    .line 307
    :cond_b
    iget v6, p0, Lc8/X;->mLast:I

    iget-object v7, p0, Lc8/X;->mArrayIndices:[I

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 308
    const/4 v6, 0x1

    iput-boolean v6, p0, Lc8/X;->mDidFillOnce:Z

    .line 309
    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lc8/X;->mLast:I

    goto/16 :goto_0

    .line 267
    :cond_c
    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    array-length v0, v6

    goto/16 :goto_3

    .line 273
    .restart local v3    # "i":I
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 299
    .end local v3    # "i":I
    :cond_e
    iget-object v6, p0, Lc8/X;->mArrayNextIndices:[I

    iget v7, p0, Lc8/X;->mHead:I

    aput v7, v6, v0

    .line 300
    iput v0, p0, Lc8/X;->mHead:I

    goto :goto_5
.end method

.method public final clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 356
    iput v0, p0, Lc8/X;->mHead:I

    .line 357
    iput v0, p0, Lc8/X;->mLast:I

    .line 358
    iput-boolean v1, p0, Lc8/X;->mDidFillOnce:Z

    .line 359
    iput v1, p0, Lc8/X;->currentSize:I

    .line 360
    return-void
.end method

.method final containsKey(Lc8/gb;)Z
    .locals 6
    .param p1, "variable"    # Lc8/gb;

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 369
    iget v3, p0, Lc8/X;->mHead:I

    if-ne v3, v5, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v2

    .line 372
    :cond_1
    iget v1, p0, Lc8/X;->mHead:I

    .line 373
    .local v1, "current":I
    const/4 v0, 0x0

    .line 374
    .local v0, "counter":I
    :goto_1
    if-eq v1, v5, :cond_0

    iget v3, p0, Lc8/X;->currentSize:I

    if-ge v0, v3, :cond_0

    .line 375
    iget-object v3, p0, Lc8/X;->mArrayIndices:[I

    aget v3, v3, v1

    iget v4, p1, Lc8/gb;->id:I

    if-ne v3, v4, :cond_2

    .line 376
    const/4 v2, 0x1

    goto :goto_0

    .line 378
    :cond_2
    iget-object v3, p0, Lc8/X;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public display()V
    .locals 6

    .prologue
    .line 662
    iget v0, p0, Lc8/X;->currentSize:I

    .line 663
    .local v0, "count":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "{ "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 664
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 665
    invoke-virtual {p0, v1}, Lc8/X;->getVariable(I)Lc8/gb;

    move-result-object v2

    .line 666
    .local v2, "v":Lc8/gb;
    if-eqz v2, :cond_0

    .line 669
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lc8/X;->getVariableValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 664
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    .end local v2    # "v":Lc8/gb;
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, " }"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method divideByAmount(F)V
    .locals 4
    .param p1, "amount"    # F

    .prologue
    .line 419
    iget v1, p0, Lc8/X;->mHead:I

    .line 420
    .local v1, "current":I
    const/4 v0, 0x0

    .line 421
    .local v0, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v2, p0, Lc8/X;->currentSize:I

    if-ge v0, v2, :cond_0

    .line 422
    iget-object v2, p0, Lc8/X;->mArrayValues:[F

    aget v3, v2, v1

    div-float/2addr v3, p1

    aput v3, v2, v1

    .line 423
    iget-object v2, p0, Lc8/X;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_0
    return-void
.end method

.method public final get(Lc8/gb;)F
    .locals 4
    .param p1, "v"    # Lc8/gb;

    .prologue
    .line 642
    iget v1, p0, Lc8/X;->mHead:I

    .line 643
    .local v1, "current":I
    const/4 v0, 0x0

    .line 644
    .local v0, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, p0, Lc8/X;->currentSize:I

    if-ge v0, v2, :cond_1

    .line 645
    iget-object v2, p0, Lc8/X;->mArrayIndices:[I

    aget v2, v2, v1

    iget v3, p1, Lc8/gb;->id:I

    if-ne v2, v3, :cond_0

    .line 646
    iget-object v2, p0, Lc8/X;->mArrayValues:[F

    aget v2, v2, v1

    .line 650
    :goto_1
    return v2

    .line 648
    :cond_0
    iget-object v2, p0, Lc8/X;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getPivotCandidate()Lc8/gb;
    .locals 6

    .prologue
    .line 578
    iget-object v4, p0, Lc8/X;->candidate:Lc8/gb;

    if-nez v4, :cond_2

    .line 580
    iget v1, p0, Lc8/X;->mHead:I

    .line 581
    .local v1, "current":I
    const/4 v0, 0x0

    .line 582
    .local v0, "counter":I
    const/4 v2, 0x0

    .line 583
    .local v2, "pivot":Lc8/gb;
    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    iget v4, p0, Lc8/X;->currentSize:I

    if-ge v0, v4, :cond_3

    .line 584
    iget-object v4, p0, Lc8/X;->mArrayValues:[F

    aget v4, v4, v1

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 588
    iget-object v4, p0, Lc8/X;->mCache:Lc8/Z;

    iget-object v4, v4, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    aget v5, v5, v1

    aget-object v3, v4, v5

    .line 589
    .local v3, "v":Lc8/gb;
    if-eqz v2, :cond_0

    iget v4, v2, Lc8/gb;->strength:I

    iget v5, v3, Lc8/gb;->strength:I

    if-ge v4, v5, :cond_1

    .line 590
    :cond_0
    move-object v2, v3

    .line 593
    .end local v3    # "v":Lc8/gb;
    :cond_1
    iget-object v4, p0, Lc8/X;->mArrayNextIndices:[I

    aget v1, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    .end local v0    # "counter":I
    .end local v1    # "current":I
    .end local v2    # "pivot":Lc8/gb;
    :cond_2
    iget-object v2, p0, Lc8/X;->candidate:Lc8/gb;

    :cond_3
    return-object v2
.end method

.method final getVariable(I)Lc8/gb;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 607
    iget v1, p0, Lc8/X;->mHead:I

    .line 608
    .local v1, "current":I
    const/4 v0, 0x0

    .line 609
    .local v0, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, p0, Lc8/X;->currentSize:I

    if-ge v0, v2, :cond_1

    .line 610
    if-ne v0, p1, :cond_0

    .line 611
    iget-object v2, p0, Lc8/X;->mCache:Lc8/Z;

    iget-object v2, v2, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget-object v3, p0, Lc8/X;->mArrayIndices:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    .line 615
    :goto_1
    return-object v2

    .line 613
    :cond_0
    iget-object v2, p0, Lc8/X;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method final getVariableValue(I)F
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 625
    iget v1, p0, Lc8/X;->mHead:I

    .line 626
    .local v1, "current":I
    const/4 v0, 0x0

    .line 627
    .local v0, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, p0, Lc8/X;->currentSize:I

    if-ge v0, v2, :cond_1

    .line 628
    if-ne v0, p1, :cond_0

    .line 629
    iget-object v2, p0, Lc8/X;->mArrayValues:[F

    aget v2, v2, v1

    .line 633
    :goto_1
    return v2

    .line 631
    :cond_0
    iget-object v2, p0, Lc8/X;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method hasAtLeastOnePositiveVariable()Z
    .locals 4

    .prologue
    .line 389
    iget v1, p0, Lc8/X;->mHead:I

    .line 390
    .local v1, "current":I
    const/4 v0, 0x0

    .line 391
    .local v0, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, p0, Lc8/X;->currentSize:I

    if-ge v0, v2, :cond_1

    .line 392
    iget-object v2, p0, Lc8/X;->mArrayValues:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 393
    const/4 v2, 0x1

    .line 397
    :goto_1
    return v2

    .line 395
    :cond_0
    iget-object v2, p0, Lc8/X;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method invert()V
    .locals 4

    .prologue
    .line 404
    iget v1, p0, Lc8/X;->mHead:I

    .line 405
    .local v1, "current":I
    const/4 v0, 0x0

    .line 406
    .local v0, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v2, p0, Lc8/X;->currentSize:I

    if-ge v0, v2, :cond_0

    .line 407
    iget-object v2, p0, Lc8/X;->mArrayValues:[F

    aget v3, v2, v1

    neg-float v3, v3

    aput v3, v2, v1

    .line 408
    iget-object v2, p0, Lc8/X;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_0
    return-void
.end method

.method pickPivotCandidate()Lc8/gb;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 448
    const/4 v4, 0x0

    .line 449
    .local v4, "restrictedCandidate":Lc8/gb;
    const/4 v5, 0x0

    .line 450
    .local v5, "unrestrictedCandidate":Lc8/gb;
    iget v2, p0, Lc8/X;->mHead:I

    .line 451
    .local v2, "current":I
    const/4 v1, 0x0

    .line 452
    .local v1, "counter":I
    :goto_0
    const/4 v7, -0x1

    if-eq v2, v7, :cond_6

    iget v7, p0, Lc8/X;->currentSize:I

    if-ge v1, v7, :cond_6

    .line 453
    iget-object v7, p0, Lc8/X;->mArrayValues:[F

    aget v0, v7, v2

    .line 454
    .local v0, "amount":F
    const v3, 0x3a83126f    # 0.001f

    .line 455
    .local v3, "epsilon":F
    cmpg-float v7, v0, v9

    if-gez v7, :cond_1

    .line 456
    neg-float v7, v3

    cmpl-float v7, v0, v7

    if-lez v7, :cond_0

    .line 457
    iget-object v7, p0, Lc8/X;->mArrayValues:[F

    aput v9, v7, v2

    .line 458
    const/4 v0, 0x0

    .line 466
    :cond_0
    :goto_1
    cmpl-float v7, v0, v9

    if-eqz v7, :cond_3

    .line 467
    iget-object v7, p0, Lc8/X;->mCache:Lc8/Z;

    iget-object v7, v7, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget-object v8, p0, Lc8/X;->mArrayIndices:[I

    aget v8, v8, v2

    aget-object v6, v7, v8

    .line 468
    .local v6, "variable":Lc8/gb;
    iget-object v7, v6, Lc8/gb;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v8, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v7, v8, :cond_4

    .line 469
    cmpg-float v7, v0, v9

    if-gez v7, :cond_2

    .line 483
    .end local v0    # "amount":F
    .end local v3    # "epsilon":F
    .end local v6    # "variable":Lc8/gb;
    :goto_2
    return-object v6

    .line 461
    .restart local v0    # "amount":F
    .restart local v3    # "epsilon":F
    :cond_1
    cmpg-float v7, v0, v3

    if-gez v7, :cond_0

    .line 462
    iget-object v7, p0, Lc8/X;->mArrayValues:[F

    aput v9, v7, v2

    .line 463
    const/4 v0, 0x0

    goto :goto_1

    .line 471
    .restart local v6    # "variable":Lc8/gb;
    :cond_2
    if-nez v5, :cond_3

    .line 472
    move-object v5, v6

    .line 478
    .end local v6    # "variable":Lc8/gb;
    :cond_3
    :goto_3
    iget-object v7, p0, Lc8/X;->mArrayNextIndices:[I

    aget v2, v7, v2

    add-int/lit8 v1, v1, 0x1

    .line 479
    goto :goto_0

    .line 474
    .restart local v6    # "variable":Lc8/gb;
    :cond_4
    cmpg-float v7, v0, v9

    if-gez v7, :cond_3

    if-eqz v4, :cond_5

    iget v7, v6, Lc8/gb;->strength:I

    iget v8, v4, Lc8/gb;->strength:I

    if-ge v7, v8, :cond_3

    .line 475
    :cond_5
    move-object v4, v6

    goto :goto_3

    .line 480
    .end local v0    # "amount":F
    .end local v3    # "epsilon":F
    .end local v6    # "variable":Lc8/gb;
    :cond_6
    if-eqz v5, :cond_7

    move-object v6, v5

    .line 481
    goto :goto_2

    :cond_7
    move-object v6, v4

    .line 483
    goto :goto_2
.end method

.method public final put(Lc8/gb;F)V
    .locals 9
    .param p1, "variable"    # Lc8/gb;
    .param p2, "value"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 116
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-nez v5, :cond_1

    .line 117
    invoke-virtual {p0, p1}, Lc8/X;->remove(Lc8/gb;)F

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v5, p0, Lc8/X;->mHead:I

    if-ne v5, v8, :cond_2

    .line 122
    iput v7, p0, Lc8/X;->mHead:I

    .line 123
    iget-object v5, p0, Lc8/X;->mArrayValues:[F

    iget v6, p0, Lc8/X;->mHead:I

    aput p2, v5, v6

    .line 124
    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    iget v6, p0, Lc8/X;->mHead:I

    iget v7, p1, Lc8/gb;->id:I

    aput v7, v5, v6

    .line 125
    iget-object v5, p0, Lc8/X;->mArrayNextIndices:[I

    iget v6, p0, Lc8/X;->mHead:I

    aput v8, v5, v6

    .line 126
    iget v5, p0, Lc8/X;->currentSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lc8/X;->currentSize:I

    .line 127
    iget-boolean v5, p0, Lc8/X;->mDidFillOnce:Z

    if-nez v5, :cond_0

    .line 129
    iget v5, p0, Lc8/X;->mLast:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lc8/X;->mLast:I

    goto :goto_0

    .line 133
    :cond_2
    iget v2, p0, Lc8/X;->mHead:I

    .line 134
    .local v2, "current":I
    const/4 v4, -0x1

    .line 135
    .local v4, "previous":I
    const/4 v1, 0x0

    .line 136
    .local v1, "counter":I
    :goto_1
    if-eq v2, v8, :cond_5

    iget v5, p0, Lc8/X;->currentSize:I

    if-ge v1, v5, :cond_5

    .line 137
    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    aget v5, v5, v2

    iget v6, p1, Lc8/gb;->id:I

    if-ne v5, v6, :cond_3

    .line 138
    iget-object v5, p0, Lc8/X;->mArrayValues:[F

    aput p2, v5, v2

    goto :goto_0

    .line 141
    :cond_3
    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    aget v5, v5, v2

    iget v6, p1, Lc8/gb;->id:I

    if-ge v5, v6, :cond_4

    .line 142
    move v4, v2

    .line 144
    :cond_4
    iget-object v5, p0, Lc8/X;->mArrayNextIndices:[I

    aget v2, v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    :cond_5
    iget v5, p0, Lc8/X;->mLast:I

    add-int/lit8 v0, v5, 0x1

    .line 151
    .local v0, "availableIndice":I
    iget-boolean v5, p0, Lc8/X;->mDidFillOnce:Z

    if-eqz v5, :cond_6

    .line 154
    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    iget v6, p0, Lc8/X;->mLast:I

    aget v5, v5, v6

    if-ne v5, v8, :cond_a

    .line 155
    iget v0, p0, Lc8/X;->mLast:I

    .line 160
    :cond_6
    :goto_2
    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    array-length v5, v5

    if-lt v0, v5, :cond_7

    .line 161
    iget v5, p0, Lc8/X;->currentSize:I

    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    array-length v6, v6

    if-ge v5, v6, :cond_7

    .line 163
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 164
    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    aget v5, v5, v3

    if-ne v5, v8, :cond_b

    .line 165
    move v0, v3

    .line 172
    .end local v3    # "i":I
    :cond_7
    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    array-length v5, v5

    if-lt v0, v5, :cond_8

    .line 173
    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    array-length v0, v5

    .line 174
    iget v5, p0, Lc8/X;->ROW_SIZE:I

    shl-int/lit8 v5, v5, 0x1

    iput v5, p0, Lc8/X;->ROW_SIZE:I

    .line 175
    iput-boolean v7, p0, Lc8/X;->mDidFillOnce:Z

    .line 176
    add-int/lit8 v5, v0, -0x1

    iput v5, p0, Lc8/X;->mLast:I

    .line 177
    iget-object v5, p0, Lc8/X;->mArrayValues:[F

    iget v6, p0, Lc8/X;->ROW_SIZE:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    iput-object v5, p0, Lc8/X;->mArrayValues:[F

    .line 178
    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    iget v6, p0, Lc8/X;->ROW_SIZE:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    iput-object v5, p0, Lc8/X;->mArrayIndices:[I

    .line 179
    iget-object v5, p0, Lc8/X;->mArrayNextIndices:[I

    iget v6, p0, Lc8/X;->ROW_SIZE:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    iput-object v5, p0, Lc8/X;->mArrayNextIndices:[I

    .line 183
    :cond_8
    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    iget v6, p1, Lc8/gb;->id:I

    aput v6, v5, v0

    .line 184
    iget-object v5, p0, Lc8/X;->mArrayValues:[F

    aput p2, v5, v0

    .line 185
    if-eq v4, v8, :cond_c

    .line 186
    iget-object v5, p0, Lc8/X;->mArrayNextIndices:[I

    iget-object v6, p0, Lc8/X;->mArrayNextIndices:[I

    aget v6, v6, v4

    aput v6, v5, v0

    .line 187
    iget-object v5, p0, Lc8/X;->mArrayNextIndices:[I

    aput v0, v5, v4

    .line 192
    :goto_4
    iget v5, p0, Lc8/X;->currentSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lc8/X;->currentSize:I

    .line 193
    iget-boolean v5, p0, Lc8/X;->mDidFillOnce:Z

    if-nez v5, :cond_9

    .line 195
    iget v5, p0, Lc8/X;->mLast:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lc8/X;->mLast:I

    .line 197
    :cond_9
    iget v5, p0, Lc8/X;->currentSize:I

    iget-object v6, p0, Lc8/X;->mArrayIndices:[I

    array-length v6, v6

    if-lt v5, v6, :cond_0

    .line 198
    const/4 v5, 0x1

    iput-boolean v5, p0, Lc8/X;->mDidFillOnce:Z

    goto/16 :goto_0

    .line 157
    :cond_a
    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    array-length v0, v5

    goto/16 :goto_2

    .line 163
    .restart local v3    # "i":I
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 189
    .end local v3    # "i":I
    :cond_c
    iget-object v5, p0, Lc8/X;->mArrayNextIndices:[I

    iget v6, p0, Lc8/X;->mHead:I

    aput v6, v5, v0

    .line 190
    iput v0, p0, Lc8/X;->mHead:I

    goto :goto_4
.end method

.method public final remove(Lc8/gb;)F
    .locals 7
    .param p1, "variable"    # Lc8/gb;

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 320
    iget-object v5, p0, Lc8/X;->candidate:Lc8/gb;

    if-ne v5, p1, :cond_0

    .line 321
    const/4 v5, 0x0

    iput-object v5, p0, Lc8/X;->candidate:Lc8/gb;

    .line 323
    :cond_0
    iget v5, p0, Lc8/X;->mHead:I

    if-ne v5, v6, :cond_2

    .line 349
    :cond_1
    :goto_0
    return v4

    .line 326
    :cond_2
    iget v1, p0, Lc8/X;->mHead:I

    .line 327
    .local v1, "current":I
    const/4 v3, -0x1

    .line 328
    .local v3, "previous":I
    const/4 v0, 0x0

    .line 329
    .local v0, "counter":I
    :goto_1
    if-eq v1, v6, :cond_1

    iget v5, p0, Lc8/X;->currentSize:I

    if-ge v0, v5, :cond_1

    .line 330
    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    aget v2, v5, v1

    .line 331
    .local v2, "idx":I
    iget v5, p1, Lc8/gb;->id:I

    if-ne v2, v5, :cond_5

    .line 332
    iget v4, p0, Lc8/X;->mHead:I

    if-ne v1, v4, :cond_4

    .line 333
    iget-object v4, p0, Lc8/X;->mArrayNextIndices:[I

    aget v4, v4, v1

    iput v4, p0, Lc8/X;->mHead:I

    .line 337
    :goto_2
    iget-object v4, p0, Lc8/X;->mCache:Lc8/Z;

    iget-object v4, v4, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    aget-object v4, v4, v2

    iget-object v5, p0, Lc8/X;->mRow:Lc8/Y;

    invoke-virtual {v4, v5}, Lc8/gb;->removeClientEquation(Lc8/Y;)V

    .line 338
    iget v4, p0, Lc8/X;->currentSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lc8/X;->currentSize:I

    .line 339
    iget-object v4, p0, Lc8/X;->mArrayIndices:[I

    aput v6, v4, v1

    .line 340
    iget-boolean v4, p0, Lc8/X;->mDidFillOnce:Z

    if-eqz v4, :cond_3

    .line 342
    iput v1, p0, Lc8/X;->mLast:I

    .line 344
    :cond_3
    iget-object v4, p0, Lc8/X;->mArrayValues:[F

    aget v4, v4, v1

    goto :goto_0

    .line 335
    :cond_4
    iget-object v4, p0, Lc8/X;->mArrayNextIndices:[I

    iget-object v5, p0, Lc8/X;->mArrayNextIndices:[I

    aget v5, v5, v1

    aput v5, v4, v3

    goto :goto_2

    .line 346
    :cond_5
    move v3, v1

    .line 347
    iget-object v5, p0, Lc8/X;->mArrayNextIndices:[I

    aget v1, v5, v1

    add-int/lit8 v0, v0, 0x1

    .line 348
    goto :goto_1
.end method

.method sizeInBytes()I
    .locals 2

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "size":I
    iget-object v1, p0, Lc8/X;->mArrayIndices:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v1, 0x0

    .line 657
    add-int/lit8 v0, v0, 0x24

    .line 658
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 681
    const-string/jumbo v2, ""

    .line 682
    .local v2, "result":Ljava/lang/String;
    iget v1, p0, Lc8/X;->mHead:I

    .line 683
    .local v1, "current":I
    const/4 v0, 0x0

    .line 684
    .local v0, "counter":I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v3, p0, Lc8/X;->currentSize:I

    if-ge v0, v3, :cond_0

    .line 685
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/X;->mArrayValues:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/X;->mCache:Lc8/Z;

    iget-object v4, v4, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget-object v5, p0, Lc8/X;->mArrayIndices:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 688
    iget-object v3, p0, Lc8/X;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    :cond_0
    return-object v2
.end method

.method updateClientEquations(Lc8/Y;)V
    .locals 4
    .param p1, "row"    # Lc8/Y;

    .prologue
    .line 434
    iget v1, p0, Lc8/X;->mHead:I

    .line 435
    .local v1, "current":I
    const/4 v0, 0x0

    .line 436
    .local v0, "counter":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v2, p0, Lc8/X;->currentSize:I

    if-ge v0, v2, :cond_0

    .line 437
    iget-object v2, p0, Lc8/X;->mCache:Lc8/Z;

    iget-object v2, v2, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget-object v3, p0, Lc8/X;->mArrayIndices:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lc8/gb;->addClientEquation(Lc8/Y;)V

    .line 438
    iget-object v2, p0, Lc8/X;->mArrayNextIndices:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_0
    return-void
.end method

.method updateFromRow(Lc8/Y;Lc8/Y;)V
    .locals 11
    .param p1, "self"    # Lc8/Y;
    .param p2, "definition"    # Lc8/Y;

    .prologue
    const/4 v10, -0x1

    .line 496
    iget v1, p0, Lc8/X;->mHead:I

    .line 497
    .local v1, "current":I
    const/4 v0, 0x0

    .line 498
    .local v0, "counter":I
    :goto_0
    if-eq v1, v10, :cond_2

    iget v8, p0, Lc8/X;->currentSize:I

    if-ge v0, v8, :cond_2

    .line 499
    iget-object v8, p0, Lc8/X;->mArrayIndices:[I

    aget v8, v8, v1

    iget-object v9, p2, Lc8/Y;->variable:Lc8/gb;

    iget v9, v9, Lc8/gb;->id:I

    if-ne v8, v9, :cond_1

    .line 500
    iget-object v8, p0, Lc8/X;->mArrayValues:[F

    aget v7, v8, v1

    .line 501
    .local v7, "value":F
    iget-object v8, p2, Lc8/Y;->variable:Lc8/gb;

    invoke-virtual {p0, v8}, Lc8/X;->remove(Lc8/gb;)F

    .line 503
    iget-object v6, p2, Lc8/Y;->variables:Lc8/X;

    .line 504
    .local v6, "definitionVariables":Lc8/X;
    iget v3, v6, Lc8/X;->mHead:I

    .line 505
    .local v3, "definitionCurrent":I
    const/4 v2, 0x0

    .line 506
    .local v2, "definitionCounter":I
    :goto_1
    if-eq v3, v10, :cond_0

    iget v8, v6, Lc8/X;->currentSize:I

    if-ge v2, v8, :cond_0

    .line 507
    iget-object v8, p0, Lc8/X;->mCache:Lc8/Z;

    iget-object v8, v8, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget-object v9, v6, Lc8/X;->mArrayIndices:[I

    aget v9, v9, v3

    aget-object v5, v8, v9

    .line 509
    .local v5, "definitionVariable":Lc8/gb;
    iget-object v8, v6, Lc8/X;->mArrayValues:[F

    aget v4, v8, v3

    .line 510
    .local v4, "definitionValue":F
    mul-float v8, v4, v7

    invoke-virtual {p0, v5, v8}, Lc8/X;->add(Lc8/gb;F)V

    .line 511
    iget-object v8, v6, Lc8/X;->mArrayNextIndices:[I

    aget v3, v8, v3

    add-int/lit8 v2, v2, 0x1

    .line 512
    goto :goto_1

    .line 513
    .end local v4    # "definitionValue":F
    .end local v5    # "definitionVariable":Lc8/gb;
    :cond_0
    iget v8, p1, Lc8/Y;->constantValue:F

    iget v9, p2, Lc8/Y;->constantValue:F

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    iput v8, p1, Lc8/Y;->constantValue:F

    .line 514
    iget-object v8, p2, Lc8/Y;->variable:Lc8/gb;

    invoke-virtual {v8, p1}, Lc8/gb;->removeClientEquation(Lc8/Y;)V

    .line 519
    iget v1, p0, Lc8/X;->mHead:I

    .line 520
    const/4 v0, 0x0

    .line 521
    goto :goto_0

    .line 523
    .end local v2    # "definitionCounter":I
    .end local v3    # "definitionCurrent":I
    .end local v6    # "definitionVariables":Lc8/X;
    .end local v7    # "value":F
    :cond_1
    iget-object v8, p0, Lc8/X;->mArrayNextIndices:[I

    aget v1, v8, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_2
    return-void
.end method

.method updateFromSystem(Lc8/Y;[Lc8/Y;)V
    .locals 13
    .param p1, "self"    # Lc8/Y;
    .param p2, "rows"    # [Lc8/Y;

    .prologue
    const/4 v12, -0x1

    .line 537
    iget v1, p0, Lc8/X;->mHead:I

    .line 538
    .local v1, "current":I
    const/4 v0, 0x0

    .line 539
    .local v0, "counter":I
    :goto_0
    if-eq v1, v12, :cond_2

    iget v10, p0, Lc8/X;->currentSize:I

    if-ge v0, v10, :cond_2

    .line 540
    iget-object v10, p0, Lc8/X;->mCache:Lc8/Z;

    iget-object v10, v10, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget-object v11, p0, Lc8/X;->mArrayIndices:[I

    aget v11, v11, v1

    aget-object v9, v10, v11

    .line 541
    .local v9, "variable":Lc8/gb;
    iget v10, v9, Lc8/gb;->definitionId:I

    if-eq v10, v12, :cond_1

    .line 542
    iget-object v10, p0, Lc8/X;->mArrayValues:[F

    aget v8, v10, v1

    .line 543
    .local v8, "value":F
    invoke-virtual {p0, v9}, Lc8/X;->remove(Lc8/gb;)F

    .line 545
    iget v10, v9, Lc8/gb;->definitionId:I

    aget-object v2, p2, v10

    .line 546
    .local v2, "definition":Lc8/Y;
    iget-boolean v10, v2, Lc8/Y;->isSimpleDefinition:Z

    if-nez v10, :cond_0

    .line 547
    iget-object v7, v2, Lc8/Y;->variables:Lc8/X;

    .line 548
    .local v7, "definitionVariables":Lc8/X;
    iget v4, v7, Lc8/X;->mHead:I

    .line 549
    .local v4, "definitionCurrent":I
    const/4 v3, 0x0

    .line 550
    .local v3, "definitionCounter":I
    :goto_1
    if-eq v4, v12, :cond_0

    iget v10, v7, Lc8/X;->currentSize:I

    if-ge v3, v10, :cond_0

    .line 551
    iget-object v10, p0, Lc8/X;->mCache:Lc8/Z;

    iget-object v10, v10, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget-object v11, v7, Lc8/X;->mArrayIndices:[I

    aget v11, v11, v4

    aget-object v6, v10, v11

    .line 553
    .local v6, "definitionVariable":Lc8/gb;
    iget-object v10, v7, Lc8/X;->mArrayValues:[F

    aget v5, v10, v4

    .line 554
    .local v5, "definitionValue":F
    mul-float v10, v5, v8

    invoke-virtual {p0, v6, v10}, Lc8/X;->add(Lc8/gb;F)V

    .line 555
    iget-object v10, v7, Lc8/X;->mArrayNextIndices:[I

    aget v4, v10, v4

    .line 556
    add-int/lit8 v3, v3, 0x1

    .line 557
    goto :goto_1

    .line 559
    .end local v3    # "definitionCounter":I
    .end local v4    # "definitionCurrent":I
    .end local v5    # "definitionValue":F
    .end local v6    # "definitionVariable":Lc8/gb;
    .end local v7    # "definitionVariables":Lc8/X;
    :cond_0
    iget v10, p1, Lc8/Y;->constantValue:F

    iget v11, v2, Lc8/Y;->constantValue:F

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    iput v10, p1, Lc8/Y;->constantValue:F

    .line 560
    iget-object v10, v2, Lc8/Y;->variable:Lc8/gb;

    invoke-virtual {v10, p1}, Lc8/gb;->removeClientEquation(Lc8/Y;)V

    .line 565
    iget v1, p0, Lc8/X;->mHead:I

    .line 566
    const/4 v0, 0x0

    .line 567
    goto :goto_0

    .line 569
    .end local v2    # "definition":Lc8/Y;
    .end local v8    # "value":F
    :cond_1
    iget-object v10, p0, Lc8/X;->mArrayNextIndices:[I

    aget v1, v10, v1

    add-int/lit8 v0, v0, 0x1

    .line 570
    goto :goto_0

    .line 571
    .end local v9    # "variable":Lc8/gb;
    :cond_2
    return-void
.end method
