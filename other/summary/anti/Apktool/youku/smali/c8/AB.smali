.class public Lc8/AB;
.super Ljava/lang/Object;
.source "ModuleConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zB;
    }
.end annotation


# static fields
.field private static final SPNAME:Ljava/lang/String; = "ModuleConfig"


# instance fields
.field public url_updateConfig:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/AB;->url_updateConfig:Z

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lc8/yB;)V
    .locals 0
    .param p1, "x0"    # Lc8/yB;

    .prologue
    .line 22
    invoke-direct {p0}, Lc8/AB;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/AB;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lc8/zB;->instance:Lc8/AB;

    return-object v0
.end method


# virtual methods
.method public saveConfig()V
    .locals 8

    .prologue
    .line 57
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v4, "jso":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v0, v3

    .line 60
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 66
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    invoke-static {}, Lc8/wH;->getInstance()Lc8/wH;

    move-result-object v6

    new-instance v7, Lc8/yB;

    invoke-direct {v7, p0, v4}, Lc8/yB;-><init>(Lc8/AB;Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Lc8/wH;->execute(Ljava/lang/Runnable;)V

    .line 74
    return-void

    .line 64
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v6

    goto :goto_1
.end method
