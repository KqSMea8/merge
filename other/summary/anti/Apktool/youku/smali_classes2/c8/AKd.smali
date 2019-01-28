.class public Lc8/AKd;
.super Ljava/lang/Object;
.source "PushIdEncryptUtils.java"


# static fields
.field private static final keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static secretKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lc8/AKd;->initKeyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lc8/AKd;->keyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptPushId(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "encryption"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 129
    .end local p0    # "encryption":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 107
    .restart local p0    # "encryption":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 109
    .local v0, "decoding":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_3

    .line 110
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "secretkey":Ljava/lang/String;
    sget-object v8, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 112
    sget-object v8, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 113
    .local v6, "secretValue":Ljava/lang/String;
    const/4 v8, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    new-array v2, v8, [C

    .line 116
    .local v2, "decryption":[C
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    if-ge v3, v8, :cond_2

    .line 117
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v4, v8, :cond_1

    .line 118
    const/4 v4, 0x0

    .line 120
    :cond_1
    shl-int/lit8 v8, v3, 0x1

    shl-int/lit8 v9, v3, 0x1

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-char v5, v8

    .line 121
    .local v5, "n":C
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    xor-int/2addr v8, v5

    int-to-char v8, v8

    aput-char v8, v2, v3

    .line 116
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 123
    .end local v5    # "n":C
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "iso-8859-1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v1, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "decoding":Ljava/lang/String;
    .local v1, "decoding":Ljava/lang/String;
    move-object v0, v1

    .end local v1    # "decoding":Ljava/lang/String;
    .end local v2    # "decryption":[C
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "secretValue":Ljava/lang/String;
    .end local v7    # "secretkey":Ljava/lang/String;
    .restart local v0    # "decoding":Ljava/lang/String;
    :cond_3
    :goto_2
    move-object p0, v0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v8

    const-string/jumbo v8, "PushIdEncryptUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid pushId encryption "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static initKeyMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    invoke-static {v0}, Lc8/AKd;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const-class v1, Lc8/AKd;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    invoke-static {v0}, Lc8/AKd;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 35
    sput-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "UCI"

    const-string/jumbo v3, "v9tC0Myz1MGwXRFy"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "G3G"

    const-string/jumbo v3, "XAsFqhhaf4gKpmAi"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "V5R"

    const-string/jumbo v3, "cOqH18NXwBtZVkvz"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "0XC"

    const-string/jumbo v3, "IgSEKZ3Ea6Pm4woS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "Z9K"

    const-string/jumbo v3, "pH6J9DMPNgqQp8m8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "EIM"

    const-string/jumbo v3, "K11Rs9HAKRXeNwq8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "SO7"

    const-string/jumbo v3, "T8LquL1DvwVcogiU"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "DDI"

    const-string/jumbo v3, "d02F6ttOtV05MYCQ"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "ULY"

    const-string/jumbo v3, "ToZZIhAywnUfHShN"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "0EV"

    const-string/jumbo v3, "r5D5RRwQhfV0AYLb"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "N6A"

    const-string/jumbo v3, "QAtSBFcXnQoUgHO2"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "S5Q"

    const-string/jumbo v3, "sDWLrZINnum227am"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "RA5"

    const-string/jumbo v3, "4Uq3Ruxo1FTBdHQE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "J04"

    const-string/jumbo v3, "N5hViUTdLCpN59H0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "B68"

    const-string/jumbo v3, "EY3sH1KKtalg5ZaT"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "9IW"

    const-string/jumbo v3, "q1u0MiuFyim4pCYY"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "UU3"

    const-string/jumbo v3, "syLnkkd8AqNykVV7"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "Z49"

    const-string/jumbo v3, "V00FiWu124yE91sH"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "BNA"

    const-string/jumbo v3, "rPP7AK1VWpKEry3p"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    const-string/jumbo v2, "WXG"

    const-string/jumbo v3, "om8w5ahkJJgpAH9v"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lc8/AKd;->secretKeyMap:Ljava/util/Map;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
