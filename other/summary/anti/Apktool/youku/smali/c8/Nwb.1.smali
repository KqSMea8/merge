.class public Lc8/Nwb;
.super Ljava/lang/Object;
.source "PageLoader.java"

# interfaces
.implements Lc8/Owb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Qwb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComboParser"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qwb;


# direct methods
.method private constructor <init>(Lc8/Qwb;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lc8/Nwb;->this$0:Lc8/Qwb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Qwb;Lc8/Hwb;)V
    .locals 0
    .param p1, "x0"    # Lc8/Qwb;
    .param p2, "x1"    # Lc8/Hwb;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lc8/Nwb;-><init>(Lc8/Qwb;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22
    .param p1, "template"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    const-string/jumbo v18, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 202
    .local v11, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "// "

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 203
    .local v4, "depObj":Lcom/alibaba/fastjson/JSONObject;
    if-nez v4, :cond_1

    const/16 v17, 0x0

    .line 239
    :cond_0
    :goto_0
    return-object v17

    .line 204
    :cond_1
    const-string/jumbo v18, "packages"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v14

    .line 213
    .local v14, "packages":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_3

    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 214
    :cond_3
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v17, "pkgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_0

    .line 216
    new-instance v13, Lc8/lwb;

    invoke-direct {v13}, Lc8/lwb;-><init>()V

    .line 217
    .local v13, "item":Lc8/lwb;
    const-string/jumbo v2, "??"

    .line 218
    .local v2, "HOST_SPLITTER":Ljava/lang/String;
    invoke-virtual {v14, v10}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "comboUrl":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 220
    .local v9, "hostIndex":I
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 221
    .local v8, "group":Ljava/lang/String;
    iput-object v8, v13, Lc8/lwb;->group:Ljava/lang/String;

    .line 222
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v9

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 223
    .local v15, "path":Ljava/lang/String;
    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "files":[Ljava/lang/String;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 225
    .local v5, "depPkgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/alibaba/aliweex/cache/Package$Info;>;"
    array-length v0, v7

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    aget-object v6, v7, v18

    .line 226
    .local v6, "f":Ljava/lang/String;
    new-instance v16, Lcom/alibaba/aliweex/cache/Package$Info;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/aliweex/cache/Package$Info;-><init>()V

    .line 227
    .local v16, "pi":Lcom/alibaba/aliweex/cache/Package$Info;
    const-string/jumbo v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 228
    .local v12, "infos":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    .line 229
    const/16 v20, 0x0

    aget-object v20, v12, v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/alibaba/aliweex/cache/Package$Info;->name:Ljava/lang/String;

    .line 230
    const/16 v20, 0x1

    aget-object v20, v12, v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/alibaba/aliweex/cache/Package$Info;->version:Ljava/lang/String;

    .line 232
    :cond_4
    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/alibaba/aliweex/cache/Package$Info;->relpath:Ljava/lang/String;

    .line 233
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/alibaba/aliweex/cache/Package$Info;->path:Ljava/lang/String;

    .line 234
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 236
    .end local v6    # "f":Ljava/lang/String;
    .end local v12    # "infos":[Ljava/lang/String;
    .end local v16    # "pi":Lcom/alibaba/aliweex/cache/Package$Info;
    :cond_5
    iput-object v5, v13, Lc8/lwb;->depInfos:Ljava/util/Vector;

    .line 237
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method
