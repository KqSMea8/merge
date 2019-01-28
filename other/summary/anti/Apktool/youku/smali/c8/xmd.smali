.class public Lc8/xmd;
.super Lc8/ymd;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ymd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrimitiveExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lc8/vmd",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/ymd",
        "<TM;TT;>;"
    }
.end annotation


# instance fields
.field private final nonPackedTag:I

.field private final packedTag:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;IZII)V
    .locals 6
    .param p1, "type"    # I
    .param p3, "tag"    # I
    .param p4, "repeated"    # Z
    .param p5, "nonPackedTag"    # I
    .param p6, "packedTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZII)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lc8/xmd;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lc8/ymd;-><init>(ILjava/lang/Class;IZLc8/wmd;)V

    .line 353
    iput p5, p0, Lc8/xmd;->nonPackedTag:I

    .line 354
    iput p6, p0, Lc8/xmd;->packedTag:I

    .line 355
    return-void
.end method

.method private computePackedDataSize(Ljava/lang/Object;)I
    .locals 6
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 564
    .local p0, "this":Lc8/xmd;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    const/4 v1, 0x0

    .line 565
    .local v1, "dataSize":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 566
    .local v0, "arrayLength":I
    iget v3, p0, Lc8/xmd;->type:I

    packed-switch v3, :pswitch_data_0

    .line 624
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected non-packable type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lc8/xmd;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 569
    :pswitch_1
    move v1, v0

    .line 626
    :cond_0
    :goto_0
    return v1

    .line 574
    :pswitch_2
    shl-int/lit8 v1, v0, 0x2

    .line 575
    goto :goto_0

    .line 579
    :pswitch_3
    shl-int/lit8 v1, v0, 0x3

    .line 580
    goto :goto_0

    .line 582
    :pswitch_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 584
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 583
    invoke-static {v3}, Lc8/umd;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 582
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 588
    .end local v2    # "i":I
    :pswitch_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 590
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 589
    invoke-static {v3}, Lc8/umd;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 594
    .end local v2    # "i":I
    :pswitch_6
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_0

    .line 596
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 595
    invoke-static {v3}, Lc8/umd;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 594
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 600
    .end local v2    # "i":I
    :pswitch_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_0

    .line 602
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    .line 601
    invoke-static {v4, v5}, Lc8/umd;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 606
    .end local v2    # "i":I
    :pswitch_8
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, v0, :cond_0

    .line 608
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    .line 607
    invoke-static {v4, v5}, Lc8/umd;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 612
    .end local v2    # "i":I
    :pswitch_9
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    if-ge v2, v0, :cond_0

    .line 614
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    .line 613
    invoke-static {v4, v5}, Lc8/umd;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 618
    .end local v2    # "i":I
    :pswitch_a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    if-ge v2, v0, :cond_0

    .line 620
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 619
    invoke-static {v3}, Lc8/umd;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 618
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .locals 5
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 631
    .local p0, "this":Lc8/xmd;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    iget v2, p0, Lc8/xmd;->tag:I

    iget v3, p0, Lc8/xmd;->nonPackedTag:I

    if-ne v2, v3, :cond_0

    .line 633
    invoke-super {p0, p1}, Lc8/ymd;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v2

    .line 639
    :goto_0
    return v2

    .line 634
    :cond_0
    iget v2, p0, Lc8/xmd;->tag:I

    iget v3, p0, Lc8/xmd;->packedTag:I

    if-ne v2, v3, :cond_1

    .line 636
    invoke-direct {p0, p1}, Lc8/xmd;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v0

    .line 638
    .local v0, "dataSize":I
    invoke-static {v0}, Lc8/umd;->computeRawVarint32Size(I)I

    move-result v2

    add-int v1, v0, v2

    .line 639
    .local v1, "payloadSize":I
    iget v2, p0, Lc8/xmd;->tag:I

    invoke-static {v2}, Lc8/umd;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    .line 641
    .end local v0    # "dataSize":I
    .end local v1    # "payloadSize":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected repeated extension tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/xmd;->tag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", unequal to both non-packed variant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/xmd;->nonPackedTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and packed variant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/xmd;->packedTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final computeSingularSerializedSize(Ljava/lang/Object;)I
    .locals 22
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 649
    .local p0, "this":Lc8/xmd;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lc8/xmd;->tag:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lc8/Jmd;->getTagFieldNumber(I)I

    move-result v6

    .line 650
    .local v6, "fieldNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/xmd;->type:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 702
    :pswitch_0
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unknown type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lc8/xmd;->type:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :pswitch_1
    move-object/from16 v4, p1

    .line 652
    check-cast v4, Ljava/lang/Double;

    .line 653
    .local v4, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lc8/umd;->computeDoubleSize(ID)I

    move-result v19

    .line 700
    .end local v4    # "doubleValue":Ljava/lang/Double;
    :goto_0
    return v19

    :pswitch_2
    move-object/from16 v9, p1

    .line 655
    check-cast v9, Ljava/lang/Float;

    .line 656
    .local v9, "floatValue":Ljava/lang/Float;
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lc8/umd;->computeFloatSize(IF)I

    move-result v19

    goto :goto_0

    .end local v9    # "floatValue":Ljava/lang/Float;
    :pswitch_3
    move-object/from16 v11, p1

    .line 658
    check-cast v11, Ljava/lang/Long;

    .line 659
    .local v11, "int64Value":Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lc8/umd;->computeInt64Size(IJ)I

    move-result v19

    goto :goto_0

    .end local v11    # "int64Value":Ljava/lang/Long;
    :pswitch_4
    move-object/from16 v18, p1

    .line 661
    check-cast v18, Ljava/lang/Long;

    .line 662
    .local v18, "uint64Value":Ljava/lang/Long;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lc8/umd;->computeUInt64Size(IJ)I

    move-result v19

    goto :goto_0

    .end local v18    # "uint64Value":Ljava/lang/Long;
    :pswitch_5
    move-object/from16 v10, p1

    .line 664
    check-cast v10, Ljava/lang/Integer;

    .line 665
    .local v10, "int32Value":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lc8/umd;->computeInt32Size(II)I

    move-result v19

    goto :goto_0

    .end local v10    # "int32Value":Ljava/lang/Integer;
    :pswitch_6
    move-object/from16 v8, p1

    .line 667
    check-cast v8, Ljava/lang/Long;

    .line 668
    .local v8, "fixed64Value":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lc8/umd;->computeFixed64Size(IJ)I

    move-result v19

    goto :goto_0

    .end local v8    # "fixed64Value":Ljava/lang/Long;
    :pswitch_7
    move-object/from16 v7, p1

    .line 670
    check-cast v7, Ljava/lang/Integer;

    .line 671
    .local v7, "fixed32Value":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lc8/umd;->computeFixed32Size(II)I

    move-result v19

    goto :goto_0

    .end local v7    # "fixed32Value":Ljava/lang/Integer;
    :pswitch_8
    move-object/from16 v2, p1

    .line 673
    check-cast v2, Ljava/lang/Boolean;

    .line 674
    .local v2, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lc8/umd;->computeBoolSize(IZ)I

    move-result v19

    goto :goto_0

    .end local v2    # "boolValue":Ljava/lang/Boolean;
    :pswitch_9
    move-object/from16 v16, p1

    .line 676
    check-cast v16, Ljava/lang/String;

    .line 677
    .local v16, "stringValue":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v19

    goto/16 :goto_0

    .end local v16    # "stringValue":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v3, p1

    .line 679
    check-cast v3, [B

    .line 680
    .local v3, "bytesValue":[B
    invoke-static {v6, v3}, Lc8/umd;->computeBytesSize(I[B)I

    move-result v19

    goto/16 :goto_0

    .end local v3    # "bytesValue":[B
    :pswitch_b
    move-object/from16 v17, p1

    .line 682
    check-cast v17, Ljava/lang/Integer;

    .line 683
    .local v17, "uint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lc8/umd;->computeUInt32Size(II)I

    move-result v19

    goto/16 :goto_0

    .end local v17    # "uint32Value":Ljava/lang/Integer;
    :pswitch_c
    move-object/from16 v5, p1

    .line 685
    check-cast v5, Ljava/lang/Integer;

    .line 686
    .local v5, "enumValue":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lc8/umd;->computeEnumSize(II)I

    move-result v19

    goto/16 :goto_0

    .end local v5    # "enumValue":Ljava/lang/Integer;
    :pswitch_d
    move-object/from16 v12, p1

    .line 688
    check-cast v12, Ljava/lang/Integer;

    .line 690
    .local v12, "sfixed32Value":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 689
    move/from16 v0, v19

    invoke-static {v6, v0}, Lc8/umd;->computeSFixed32Size(II)I

    move-result v19

    goto/16 :goto_0

    .end local v12    # "sfixed32Value":Ljava/lang/Integer;
    :pswitch_e
    move-object/from16 v13, p1

    .line 692
    check-cast v13, Ljava/lang/Long;

    .line 694
    .local v13, "sfixed64Value":Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 693
    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lc8/umd;->computeSFixed64Size(IJ)I

    move-result v19

    goto/16 :goto_0

    .end local v13    # "sfixed64Value":Ljava/lang/Long;
    :pswitch_f
    move-object/from16 v14, p1

    .line 696
    check-cast v14, Ljava/lang/Integer;

    .line 697
    .local v14, "sint32Value":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lc8/umd;->computeSInt32Size(II)I

    move-result v19

    goto/16 :goto_0

    .end local v14    # "sint32Value":Ljava/lang/Integer;
    :pswitch_10
    move-object/from16 v15, p1

    .line 699
    check-cast v15, Ljava/lang/Long;

    .line 700
    .local v15, "sint64Value":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lc8/umd;->computeSInt64Size(IJ)I

    move-result v19

    goto/16 :goto_0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected readData(Lc8/tmd;)Ljava/lang/Object;
    .locals 3
    .param p1, "input"    # Lc8/tmd;

    .prologue
    .line 360
    .local p0, "this":Lc8/xmd;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    :try_start_0
    iget v1, p0, Lc8/xmd;->type:I

    invoke-virtual {p1, v1}, Lc8/tmd;->readPrimitiveField(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected readDataInto(Lc8/Imd;Ljava/util/List;)V
    .locals 4
    .param p1, "data"    # Lc8/Imd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Imd;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lc8/xmd;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    .local p2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget v2, p1, Lc8/Imd;->tag:I

    iget v3, p0, Lc8/xmd;->nonPackedTag:I

    if-ne v2, v3, :cond_1

    .line 371
    iget-object v2, p1, Lc8/Imd;->bytes:[B

    invoke-static {v2}, Lc8/tmd;->newInstance([B)Lc8/tmd;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/xmd;->readData(Lc8/tmd;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_0
    return-void

    .line 373
    :cond_1
    iget-object v2, p1, Lc8/Imd;->bytes:[B

    .line 374
    invoke-static {v2}, Lc8/tmd;->newInstance([B)Lc8/tmd;

    move-result-object v0

    .line 376
    .local v0, "buffer":Lc8/tmd;
    :try_start_0
    invoke-virtual {v0}, Lc8/tmd;->readRawVarint32()I

    move-result v2

    invoke-virtual {v0, v2}, Lc8/tmd;->pushLimit(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    invoke-virtual {v0}, Lc8/tmd;->isAtEnd()Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    invoke-virtual {p0, v0}, Lc8/xmd;->readData(Lc8/tmd;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Error reading extension field"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected writeRepeatedData(Ljava/lang/Object;Lc8/umd;)V
    .locals 7
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "output"    # Lc8/umd;

    .prologue
    .line 466
    .local p0, "this":Lc8/xmd;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    iget v4, p0, Lc8/xmd;->tag:I

    iget v5, p0, Lc8/xmd;->nonPackedTag:I

    if-ne v4, v5, :cond_1

    .line 468
    invoke-super {p0, p1, p2}, Lc8/ymd;->writeRepeatedData(Ljava/lang/Object;Lc8/umd;)V

    .line 556
    :cond_0
    return-void

    .line 469
    :cond_1
    iget v4, p0, Lc8/xmd;->tag:I

    iget v5, p0, Lc8/xmd;->packedTag:I

    if-ne v4, v5, :cond_2

    .line 472
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 473
    .local v0, "arrayLength":I
    invoke-direct {p0, p1}, Lc8/xmd;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v1

    .line 476
    .local v1, "dataSize":I
    :try_start_0
    iget v4, p0, Lc8/xmd;->tag:I

    invoke-virtual {p2, v4}, Lc8/umd;->writeRawVarint32(I)V

    .line 477
    invoke-virtual {p2, v1}, Lc8/umd;->writeRawVarint32(I)V

    .line 478
    iget v4, p0, Lc8/xmd;->type:I

    packed-switch v4, :pswitch_data_0

    .line 550
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unpackable type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/xmd;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :catch_0
    move-exception v2

    .line 554
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 480
    .end local v2    # "e":Ljava/io/IOException;
    :pswitch_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 481
    :try_start_1
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p2, v4}, Lc8/umd;->writeBoolNoTag(Z)V

    .line 480
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 485
    .end local v3    # "i":I
    :pswitch_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 486
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lc8/umd;->writeFixed32NoTag(I)V

    .line 485
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 490
    .end local v3    # "i":I
    :pswitch_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_0

    .line 491
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lc8/umd;->writeSFixed32NoTag(I)V

    .line 490
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 495
    .end local v3    # "i":I
    :pswitch_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_0

    .line 496
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v4

    invoke-virtual {p2, v4}, Lc8/umd;->writeFloatNoTag(F)V

    .line 495
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 500
    .end local v3    # "i":I
    :pswitch_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_0

    .line 501
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lc8/umd;->writeFixed64NoTag(J)V

    .line 500
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 505
    .end local v3    # "i":I
    :pswitch_6
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_0

    .line 506
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lc8/umd;->writeSFixed64NoTag(J)V

    .line 505
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 510
    .end local v3    # "i":I
    :pswitch_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    if-ge v3, v0, :cond_0

    .line 511
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lc8/umd;->writeDoubleNoTag(D)V

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 515
    .end local v3    # "i":I
    :pswitch_8
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7
    if-ge v3, v0, :cond_0

    .line 516
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lc8/umd;->writeInt32NoTag(I)V

    .line 515
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 520
    .end local v3    # "i":I
    :pswitch_9
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8
    if-ge v3, v0, :cond_0

    .line 521
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lc8/umd;->writeSInt32NoTag(I)V

    .line 520
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 525
    .end local v3    # "i":I
    :pswitch_a
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_9
    if-ge v3, v0, :cond_0

    .line 526
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lc8/umd;->writeUInt32NoTag(I)V

    .line 525
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 530
    .end local v3    # "i":I
    :pswitch_b
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_a
    if-ge v3, v0, :cond_0

    .line 531
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lc8/umd;->writeInt64NoTag(J)V

    .line 530
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 535
    .end local v3    # "i":I
    :pswitch_c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b
    if-ge v3, v0, :cond_0

    .line 536
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lc8/umd;->writeSInt64NoTag(J)V

    .line 535
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 540
    .end local v3    # "i":I
    :pswitch_d
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_c
    if-ge v3, v0, :cond_0

    .line 541
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lc8/umd;->writeUInt64NoTag(J)V

    .line 540
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 545
    .end local v3    # "i":I
    :pswitch_e
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_d
    if-ge v3, v0, :cond_0

    .line 546
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lc8/umd;->writeEnumNoTag(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 545
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 557
    .end local v0    # "arrayLength":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected repeated extension tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/xmd;->tag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", unequal to both non-packed variant "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/xmd;->nonPackedTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and packed variant "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/xmd;->packedTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_d
        :pswitch_8
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_e
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method protected final writeSingularData(Ljava/lang/Object;Lc8/umd;)V
    .locals 24
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Lc8/umd;

    .prologue
    .line 389
    .local p0, "this":Lc8/xmd;, "Lcom/google/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lc8/xmd;->tag:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/umd;->writeRawVarint32(I)V

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Lc8/xmd;->type:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 456
    :pswitch_0
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unknown type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lc8/xmd;->type:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :catch_0
    move-exception v7

    .line 460
    .local v7, "e":Ljava/io/IOException;
    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .line 392
    .end local v7    # "e":Ljava/io/IOException;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Double;

    move-object v6, v0

    .line 393
    .local v6, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/umd;->writeDoubleNoTag(D)V

    .line 462
    .end local v6    # "doubleValue":Ljava/lang/Double;
    :goto_0
    return-void

    .line 396
    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Float;

    move-object v11, v0

    .line 397
    .local v11, "floatValue":Ljava/lang/Float;
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/umd;->writeFloatNoTag(F)V

    goto :goto_0

    .line 400
    .end local v11    # "floatValue":Ljava/lang/Float;
    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v13, v0

    .line 401
    .local v13, "int64Value":Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/umd;->writeInt64NoTag(J)V

    goto :goto_0

    .line 404
    .end local v13    # "int64Value":Ljava/lang/Long;
    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v20, v0

    .line 405
    .local v20, "uint64Value":Ljava/lang/Long;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/umd;->writeUInt64NoTag(J)V

    goto :goto_0

    .line 408
    .end local v20    # "uint64Value":Ljava/lang/Long;
    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v12, v0

    .line 409
    .local v12, "int32Value":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/umd;->writeInt32NoTag(I)V

    goto :goto_0

    .line 412
    .end local v12    # "int32Value":Ljava/lang/Integer;
    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v10, v0

    .line 413
    .local v10, "fixed64Value":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/umd;->writeFixed64NoTag(J)V

    goto :goto_0

    .line 416
    .end local v10    # "fixed64Value":Ljava/lang/Long;
    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v9, v0

    .line 417
    .local v9, "fixed32Value":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/umd;->writeFixed32NoTag(I)V

    goto :goto_0

    .line 420
    .end local v9    # "fixed32Value":Ljava/lang/Integer;
    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    .line 421
    .local v4, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/umd;->writeBoolNoTag(Z)V

    goto/16 :goto_0

    .line 424
    .end local v4    # "boolValue":Ljava/lang/Boolean;
    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    .line 425
    .local v18, "stringValue":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lc8/umd;->writeStringNoTag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    .end local v18    # "stringValue":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v5, v0

    .line 429
    .local v5, "bytesValue":[B
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lc8/umd;->writeBytesNoTag([B)V

    goto/16 :goto_0

    .line 432
    .end local v5    # "bytesValue":[B
    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v19, v0

    .line 433
    .local v19, "uint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/umd;->writeUInt32NoTag(I)V

    goto/16 :goto_0

    .line 436
    .end local v19    # "uint32Value":Ljava/lang/Integer;
    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    .line 437
    .local v8, "enumValue":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/umd;->writeEnumNoTag(I)V

    goto/16 :goto_0

    .line 440
    .end local v8    # "enumValue":Ljava/lang/Integer;
    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v14, v0

    .line 441
    .local v14, "sfixed32Value":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/umd;->writeSFixed32NoTag(I)V

    goto/16 :goto_0

    .line 444
    .end local v14    # "sfixed32Value":Ljava/lang/Integer;
    :pswitch_e
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v15, v0

    .line 445
    .local v15, "sfixed64Value":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/umd;->writeSFixed64NoTag(J)V

    goto/16 :goto_0

    .line 448
    .end local v15    # "sfixed64Value":Ljava/lang/Long;
    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v16, v0

    .line 449
    .local v16, "sint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/umd;->writeSInt32NoTag(I)V

    goto/16 :goto_0

    .line 452
    .end local v16    # "sint32Value":Ljava/lang/Integer;
    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v17, v0

    .line 453
    .local v17, "sint64Value":Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/umd;->writeSInt64NoTag(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
