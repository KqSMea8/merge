.class public Lc8/zB;
.super Ljava/lang/Object;
.source "ModuleConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/AB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final instance:Lc8/AB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lc8/zB;->getInstance()Lc8/AB;

    move-result-object v0

    sput-object v0, Lc8/zB;->instance:Lc8/AB;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInstance()Lc8/AB;
    .locals 9

    .prologue
    .line 32
    new-instance v1, Lc8/AB;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lc8/AB;-><init>(Lc8/yB;)V

    .line 34
    .local v1, "config":Lc8/AB;
    :try_start_0
    const-string/jumbo v7, "ModuleConfig"

    const-string/jumbo v8, "wv-data"

    invoke-static {v7, v8}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "data":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 37
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v5, "jso":Lorg/json/JSONObject;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v0, v4

    .line 39
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "i$":I
    .end local v5    # "jso":Lorg/json/JSONObject;
    .end local v6    # "len$":I
    :catch_0
    move-exception v7

    .line 44
    :cond_0
    return-object v1
.end method
