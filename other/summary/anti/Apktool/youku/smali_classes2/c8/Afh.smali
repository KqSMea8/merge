.class public Lc8/Afh;
.super Ljava/lang/Object;
.source "OrangeConfigs.java"


# static fields
.field public static final PRELOAD_CACHE_CONFIG:Ljava/lang/String; = "preload_cache_config"

.field public static final YOUKU_CORE_TAB_SWITCH_NS:Ljava/lang/String; = "youku_core_tab_switch"

.field public static preload_cache_switch:Ljava/lang/String;

.field public static support_type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "0"

    sput-object v0, Lc8/Afh;->preload_cache_switch:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    sput-object v0, Lc8/Afh;->support_type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOpen()Z
    .locals 2

    .prologue
    .line 16
    const-string/jumbo v0, "1"

    sget-object v1, Lc8/Afh;->preload_cache_switch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupport(Ljava/lang/String;)Z
    .locals 7
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 20
    sget-object v5, Lc8/Afh;->support_type:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v4

    .line 24
    :cond_1
    :try_start_0
    sget-object v5, Lc8/Afh;->support_type:Ljava/lang/String;

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "types":[Ljava/lang/String;
    if-nez v3, :cond_2

    move v2, v4

    .line 26
    .local v2, "length":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 27
    aget-object v5, v3, v1

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 28
    const/4 v4, 0x1

    goto :goto_0

    .line 25
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    array-length v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 26
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 31
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "types":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
