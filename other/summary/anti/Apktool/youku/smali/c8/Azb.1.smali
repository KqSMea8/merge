.class public abstract Lc8/Azb;
.super Ljava/lang/Object;
.source "UTBaseConfMgr.java"


# static fields
.field public static TAG_CONFIG_TIMESTAMP:Ljava/lang/String;


# instance fields
.field private DefaultWhiteConfigs1:Ljava/lang/String;

.field private DefaultWhiteConfigs2:Ljava/lang/String;

.field private mConfBizList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lc8/Gzb;",
            ">;"
        }
    .end annotation
.end field

.field private mConfBizMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Gzb;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultWhiteConfigs:Ljava/lang/String;

.field private mLocalDBConfigEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Dzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const-string/jumbo v0, "timestamp"

    sput-object v0, Lc8/Azb;->TAG_CONFIG_TIMESTAMP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc8/Azb;->mConfBizList:Ljava/util/Vector;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Azb;->mConfBizMap:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/Azb;->mLocalDBConfigEntities:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Azb;->mDefaultWhiteConfigs:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "{\"B02N_utap_system\":{\"content\":{\"fu\":30,\"sw_plugin\":0,\"bu\":300}},\"B02N_ut_sample\":{\"content\":{\"1\":{\"cp\":10000},\"1000\":{\"cp\":10000},\"2000\":{\"cp\":10000},\"2100\":{\"cp\":10000},\"3002\":{\"cp\":10000},\"3003\":{\"cp\":10000},\"3004\":{\"cp\":10000},\"4007\":{\"cp\":10000},\"5002\":{\"cp\":10000},\"5004\":{\"cp\":10000},\"5005\":{\"cp\":10000},\"6004\":{\"cp\":10000},\"9001\":{\"cp\":10000},\"9002\":{\"cp\":10000},\"9003\":{\"cp\":10000},\"9101\":{\"cp\":10000},\"9199\":{\"cp\":10000},\"15301\":{\"cp\":10000},\"15302\":{\"cp\":1},\"15303\":{\"cp\":10000},\"15304\":{\"cp\":10000},\"15305\":{\"cp\":10000},\"15306\":{\"cp\":100},\"15307\":{\"cp\":10000},\"15391\":{\"cp\":100},\"15392\":{\"cp\":10000},\"15393\":{\"cp\":1200},\"15394\":{\"cp\":10000},\"19999\":{\"cp\":10000},\"21032\":{\"cp\":10000},\"21034\":{\"cp\":1},\"21064\":{\"cp\":10000},\"22064\":{\"cp\":1},\"61001\":{\"cp\":10000},\"61006\":{\"cp\":10000},\"61007\":{\"cp\":10000},\"65001\":{\"cp\":1},\"65100\":{\"cp\":1},\"65101\":{\"cp\":4},\"65104\":{\"cp\":10000},\"65105\":{\"cp\":10000},\"65111\":{\"cp\":100},\"65113\":{\"cp\":10000},\"65114\":{\"cp\":10000},\"65125\":{\"cp\":10000},\"65132\":{\"cp\":10000},\"65171\":{\"cp\":100},\"65172\":{\"cp\":100},\"65173\":{\"cp\":100},\"65174\":{\"cp\":100},\"65175\":{\"cp\":100},\"65176\":{\"cp\":100},\"65177\":{\"cp\":100},\"65178\":{\"cp\":100},\"65180\":{\"cp\":900},\"65183\":{\"cp\":10000},\"65200\":{\"cp\":10000},\"65501\":{\"cp\":10000},\"65502\":{\"cp\":10000},\"65503\":{\"cp\":10000},\"66001\":{\"cp\":100},\"66003\":{\"cp\":10000},\"66101\":{\"cp\":10000},\"66404\":{\"cp\":10000},\"66602\":{\"cp\":10000}}},\"B02N_ut_stream\":{\"content\":{\"1\":{\"stm\":\"stm_x\"},\"1000\":{\"stm\":\"stm_p\"},\"2000\":{\"stm\":\"stm_p\"},\"2100\":{\"stm\":\"stm_c\"},\"4007\":{\"stm\":\"stm_d\"},\"5002\":{\"stm\":\"stm_d\"},\"5004\":{\"stm\":\"stm_d\"},\"5005\":{\"stm\":\"stm_d\"},\"6004\":{\"stm\":\"stm_d\"},\"9001\":{\"stm\":\"stm_d\"},\"9002\":{\"stm\":\"stm_d\"},\"9003\":{\"stm\":\"stm_d\"},\"9101\":{\"stm\":\"stm_d\"},\"9199\":{\"stm\":\"stm_d\"},\"15301\":{\"stm\":\"stm_x\"},\"15302\":{\"stm\":\"stm_x\"},\"15303\":{\"stm\":\"stm_x\"},\"15304\":{\"stm\":\"stm_x\"},\"15305\":{\"stm\":\"stm_x\"},\"15306\":{\"stm\":\"stm_x\"},\"15307\":{\"stm\":\"stm_x\"},\"15391\":{\"stm\":\"stm_x\"},\"15392\":{\"stm\":\"stm_x\"},\"15393\":{\"stm\":\"stm_x\"},\"15394\":{\"stm\":\"stm_x\"},\"19999\":{\"stm\":\"stm_d\"},\"21032\":{\"stm\":\"stm_x\"},\"21034\":{\"stm\":\"stm_x\"},\"21064\":{\"stm\":\"stm_x\"},\"22064\":{\"stm\":\"stm_x\"},\"61001\":{\"stm\":\"stm_x\"},\"61006\":{\"stm\":\"stm_x\"},\"61007\":{\"stm\":\"stm_x\"},\"65001\":{\"stm\":\"stm_x\"},\"65100\":{\"stm\":\"stm_x\"},\"65101\":{\"stm\":\"stm_x\"},\"65104\":{\"stm\":\"stm_x\"},\"65105\":{\"stm\":\"stm_x\"},\"65111\":{\"stm\":\"stm_x\"},\"65113\":{\"stm\":\"stm_x\"},\"65114\":{\"stm\":\"stm_x\"},\"65125\":{\"stm\":\"stm_x\"},\"65132\":{\"stm\":\"stm_x\"},\"65171\":{\"stm\":\"stm_x\"},\"65172\":{\"stm\":\"stm_x\"},\"65173\":{\"stm\":\"stm_x\"},\"65174\":{\"stm\":\"stm_x\"},\"65175\":{\"stm\":\"stm_x\"},\"65176\":{\"stm\":\"stm_x\"},\"65177\":{\"stm\":\"stm_x\"},\"65178\":{\"stm\":\"stm_x\"},\"65180\":{\"stm\":\"stm_x\"},\"65183\":{\"stm\":\"stm_x\"},\"65200\":{\"stm\":\"stm_d\"},\"65501\":{\"stm\":\"stm_d\"},\"65502\":{\"stm\":\"stm_d\"},\"65503\":{\"stm\":\"stm_d\"},\"66001\":{\"stm\":\"stm_d\"},\"66003\":{\"stm\":\"stm_d\"},\"66101\":{\"stm\":\"stm_d\"},\"66404\":{\"stm\":\"stm_d\"}}},\"B02N_ut_bussiness\":{\"content\":{\"tpk\":[{\"kn\":\"adid6\",\"ty\":\"nearby\"},{\"kn\":\"ucm\",\"ty\":\"nearby\"},{\"kn\":\"bdid\",\"ty\":\"far\"},{\"kn\":\"ref_pid\",\"ty\":\"far\"},{\"kn\":\"pid\",\"ty\":\"far\"},{\"kn\":\"tpa\",\"ty\":\"far\"},{\"kn\":\"point\",\"ty\":\"far\"},{\"kn\":\"ali_trackid\",\"ty\":\"far\"},{\"kn\":\"xncode\",\"ty\":\"nearby\"}]}}}"

    iput-object v0, p0, Lc8/Azb;->DefaultWhiteConfigs1:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, "{\"B02N_utap_system\":{\"content\":{\"fu\":30,\"sw_plugin\":0,\"bu\":300,\"delay\":{\"2101\":{\"all_d\":1,\"arg1\":[\"%Page_Home_Button-Huichang%\",\"%Page_Home_Button-renqunhuichang%\",\"JuJRT_JRT_LIST_LOAD\",\"JuJRT_JRT_LIST\"]},\"2102\":{\"all_d\":1},\"19999\":{\"all_d\":0,\"arg1\":[\"Show1212Box_aop\",\"Page_Home_Show-LeiMuHuiChang\",\"Page_Home_Show-RenQunHuiChang\"]}}}},\"B02N_ap_counter\":{\"content\":{\"event_type\":{\"cp\":1000}}},\"B02N_ap_alarm\":{\"content\":{\"event_type\":{\"cp\":1000}}},\"B02N_ap_stat\":{\"content\":{\"event_type\":{\"cp\":1000}}},\"B02N_ut_sample\":{\"content\":{\"1\":{\"cp\":10000},\"1000\":{\"cp\":10000},\"2000\":{\"cp\":10000},\"2100\":{\"cp\":10000},\"4007\":{\"cp\":10000},\"5002\":{\"cp\":10000},\"5004\":{\"cp\":10000},\"5005\":{\"cp\":10000},\"6004\":{\"cp\":10000},\"9001\":{\"cp\":10000},\"9002\":{\"cp\":10000},\"9003\":{\"cp\":10000},\"9101\":{\"cp\":10000},\"9199\":{\"cp\":10000},\"15301\":{\"cp\":10000},\"15302\":{\"cp\":1},\"15303\":{\"cp\":10000},\"15304\":{\"cp\":10000},\"15305\":{\"cp\":10000},\"15306\":{\"cp\":100},\"15307\":{\"cp\":10000},\"15391\":{\"cp\":100},\"15392\":{\"cp\":10000},\"15393\":{\"cp\":1200},\"15394\":{\"cp\":10000},\"19999\":{\"cp\":10000},\"21032\":{\"cp\":10000},\"21034\":{\"cp\":1},\"21064\":{\"cp\":10000},\"22064\":{\"cp\":1},\"61001\":{\"cp\":10000},\"61006\":{\"cp\":10000},\"61007\":{\"cp\":10000},\"65001\":{\"cp\":1},\"65100\":{\"cp\":1},\"65101\":{\"cp\":4},\"65104\":{\"cp\":10000},\"65105\":{\"cp\":10000},\"65111\":{\"cp\":100},\"65113\":{\"cp\":10000},\"65114\":{\"cp\":10000},\"65125\":{\"cp\":10000},\"65132\":{\"cp\":10000},\"65171\":{\"cp\":100},\"65172\":{\"cp\":100},\"65173\":{\"cp\":100},\"65174\":{\"cp\":100},\"65175\":{\"cp\":100},\"65176\":{\"cp\":100},\"65177\":{\"cp\":100},\"65178\":{\"cp\":100},\"65180\":{\"cp\":900},\"65183\":{\"cp\":10000},\"65200\":{\"cp\":10000},\"65501\":{\"cp\":10000},\"65502\":{\"cp\":10000},\"65503\":{\"cp\":10000},\"66001\":{\"cp\":100},\"66003\":{\"cp\":10000},\"66101\":{\"cp\":10000},\"66404\":{\"cp\":10000}}},\"B02N_ut_stream\":{\"content\":{\"1\":{\"stm\":\"stm_x\"},\"1000\":{\"stm\":\"stm_p\"},\"2000\":{\"stm\":\"stm_p\"},\"2100\":{\"stm\":\"stm_c\"},\"4007\":{\"stm\":\"stm_d\"},\"5002\":{\"stm\":\"stm_d\"},\"5004\":{\"stm\":\"stm_d\"},\"5005\":{\"stm\":\"stm_d\"},\"6004\":{\"stm\":\"stm_d\"},\"9001\":{\"stm\":\"stm_d\"},\"9002\":{\"stm\":\"stm_d\"},\"9003\":{\"stm\":\"stm_d\"},\"9101\":{\"stm\":\"stm_d\"},\"9199\":{\"stm\":\"stm_d\"},\"15301\":{\"stm\":\"stm_x\"},\"15302\":{\"stm\":\"stm_x\"},\"15303\":{\"stm\":\"stm_x\"},\"15304\":{\"stm\":\"stm_x\"},\"15305\":{\"stm\":\"stm_x\"},\"15306\":{\"stm\":\"stm_x\"},\"15307\":{\"stm\":\"stm_x\"},\"15391\":{\"stm\":\"stm_x\"},\"15392\":{\"stm\":\"stm_x\"},\"15393\":{\"stm\":\"stm_x\"},\"15394\":{\"stm\":\"stm_x\"},\"19999\":{\"stm\":\"stm_d\"},\"21032\":{\"stm\":\"stm_x\"},\"21034\":{\"stm\":\"stm_x\"},\"21064\":{\"stm\":\"stm_x\"},\"22064\":{\"stm\":\"stm_x\"},\"61001\":{\"stm\":\"stm_x\"},\"61006\":{\"stm\":\"stm_x\"},\"61007\":{\"stm\":\"stm_x\"},\"65001\":{\"stm\":\"stm_x\"},\"65100\":{\"stm\":\"stm_x\"},\"65101\":{\"stm\":\"stm_x\"},\"65104\":{\"stm\":\"stm_x\"},\"65105\":{\"stm\":\"stm_x\"},\"65111\":{\"stm\":\"stm_x\"},\"65113\":{\"stm\":\"stm_x\"},\"65114\":{\"stm\":\"stm_x\"},\"65125\":{\"stm\":\"stm_x\"},\"65132\":{\"stm\":\"stm_x\"},\"65171\":{\"stm\":\"stm_x\"},\"65172\":{\"stm\":\"stm_x\"},\"65173\":{\"stm\":\"stm_x\"},\"65174\":{\"stm\":\"stm_x\"},\"65175\":{\"stm\":\"stm_x\"},\"65176\":{\"stm\":\"stm_x\"},\"65177\":{\"stm\":\"stm_x\"},\"65178\":{\"stm\":\"stm_x\"},\"65180\":{\"stm\":\"stm_x\"},\"65183\":{\"stm\":\"stm_x\"},\"65200\":{\"stm\":\"stm_d\"},\"65501\":{\"stm\":\"stm_d\"},\"65502\":{\"stm\":\"stm_d\"},\"65503\":{\"stm\":\"stm_d\"},\"66001\":{\"stm\":\"stm_d\"},\"66003\":{\"stm\":\"stm_d\"},\"66101\":{\"stm\":\"stm_d\"},\"66404\":{\"stm\":\"stm_d\"}}},\"B02N_ut_bussiness\":{\"content\":{\"tpk\":[{\"kn\":\"adid6\",\"ty\":\"nearby\"},{\"kn\":\"ucm\",\"ty\":\"nearby\"},{\"kn\":\"bdid\",\"ty\":\"far\"},{\"kn\":\"ref_pid\",\"ty\":\"far\"},{\"kn\":\"pid\",\"ty\":\"far\"},{\"kn\":\"tpa\",\"ty\":\"far\"},{\"kn\":\"point\",\"ty\":\"far\"},{\"kn\":\"ali_trackid\",\"ty\":\"far\"},{\"kn\":\"xncode\",\"ty\":\"nearby\"}]}}}"

    iput-object v0, p0, Lc8/Azb;->DefaultWhiteConfigs2:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lc8/Azb;->DefaultWhiteConfigs1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lc8/Azb;->setDefaultWhiteConfigs(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private final declared-synchronized _clearAllOnlineConfig()V
    .locals 3

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v1

    const-class v2, Lc8/Dzb;

    invoke-virtual {v1, v2}, Lc8/Wzb;->clear(Ljava/lang/Class;)V

    .line 227
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 228
    .local v0, "lEmptyEntities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    invoke-direct {p0, v0}, Lc8/Azb;->_updateLocalConfigEntities(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 226
    .end local v0    # "lEmptyEntities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final declared-synchronized _dispatchConfig(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Dzb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "aConfigEntities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    monitor-enter p0

    if-eqz p1, :cond_5

    .line 239
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v9, "mConfigEntityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Dzb;

    .line 241
    .local v0, "aConfigEntity":Lc8/Dzb;
    invoke-virtual {v0}, Lc8/Dzb;->getGroupname()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 242
    invoke-virtual {v0}, Lc8/Dzb;->getGroupname()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 238
    .end local v0    # "aConfigEntity":Lc8/Dzb;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v9    # "mConfigEntityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 245
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v9    # "mConfigEntityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    :cond_1
    :try_start_1
    iget-object v10, p0, Lc8/Azb;->mConfBizList:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Gzb;

    .line 246
    .local v4, "lConfBiz":Lc8/Gzb;
    invoke-virtual {v4}, Lc8/Gzb;->getOrangeGroupnames()[Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "lGroupnames":[Ljava/lang/String;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v7

    .local v8, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v8, :cond_2

    aget-object v6, v1, v3

    .line 248
    .local v6, "lGroupname":Ljava/lang/String;
    invoke-interface {v9, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 249
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Dzb;

    .line 250
    .local v5, "lDBConfEntity":Lc8/Dzb;
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 251
    const-string/jumbo v10, ""

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "Groupname"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "DBConfEntity"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-virtual {v5}, Lc8/Dzb;->getConfContent()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lc8/aCb;->transStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_3
    invoke-virtual {v5}, Lc8/Dzb;->getConfContent()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/aCb;->transStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Lc8/Gzb;->onOrangeConfigurationArrive(Ljava/lang/String;Ljava/util/Map;)V

    .line 247
    .end local v5    # "lDBConfEntity":Lc8/Dzb;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 255
    :cond_4
    invoke-virtual {v4, v6}, Lc8/Gzb;->onNonOrangeConfigurationArrive(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 260
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "lConfBiz":Lc8/Gzb;
    .end local v6    # "lGroupname":Ljava/lang/String;
    .end local v7    # "lGroupnames":[Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v9    # "mConfigEntityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    :cond_5
    monitor-exit p0

    return-void
.end method

.method private final declared-synchronized _dispatchNonConfig()V
    .locals 8

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lc8/Azb;->mConfBizList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Gzb;

    .line 267
    .local v3, "lConfBiz":Lc8/Gzb;
    invoke-virtual {v3}, Lc8/Gzb;->getOrangeGroupnames()[Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "lGroupnames":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v4, v0, v2

    .line 269
    .local v4, "lGroupname":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lc8/Gzb;->onNonOrangeConfigurationArrive(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "lConfBiz":Lc8/Gzb;
    .end local v4    # "lGroupname":Ljava/lang/String;
    .end local v5    # "lGroupnames":[Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_1
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private final declared-synchronized _loadAllDBConfig()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Dzb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v1

    const-class v2, Lc8/Dzb;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/Wzb;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 195
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    monitor-exit p0

    return-object v0

    .line 194
    .end local v0    # "configs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final declared-synchronized _mergeAndSaveConfig(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Dzb;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lc8/Dzb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "aConfigEntities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 291
    .local v6, "mLocalConfigEntityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    iget-object v7, p0, Lc8/Azb;->mLocalDBConfigEntities:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Dzb;

    .line 292
    .local v2, "lConfigEntity":Lc8/Dzb;
    invoke-virtual {v2}, Lc8/Dzb;->getGroupname()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 293
    invoke-virtual {v2}, Lc8/Dzb;->getGroupname()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 290
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lConfigEntity":Lc8/Dzb;
    .end local v6    # "mLocalConfigEntityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 297
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v6    # "mLocalConfigEntityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    :cond_1
    :try_start_1
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 298
    .local v5, "lResultEntities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Dzb;

    .line 299
    .local v3, "lConfigItem":Lc8/Dzb;
    invoke-virtual {v3}, Lc8/Dzb;->getGroupname()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "aGroupname":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 301
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Dzb;

    .line 302
    .local v4, "lLocalConfigItem":Lc8/Dzb;
    if-eqz v4, :cond_4

    .line 303
    invoke-virtual {v3}, Lc8/Dzb;->is304()Z

    move-result v7

    if-nez v7, :cond_3

    .line 304
    invoke-virtual {v3}, Lc8/Dzb;->getConfContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lc8/Dzb;->setConfContent(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v3}, Lc8/Dzb;->getConfTimestamp()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lc8/Dzb;->setConfTimestamp(J)V

    .line 307
    :cond_3
    invoke-virtual {v4}, Lc8/Dzb;->store()V

    .line 309
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 316
    :cond_4
    invoke-virtual {p0, v0}, Lc8/Azb;->deleteDBConfigEntity(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v3}, Lc8/Dzb;->store()V

    .line 318
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v7, p0, Lc8/Azb;->mLocalDBConfigEntities:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 323
    .end local v0    # "aGroupname":Ljava/lang/String;
    .end local v3    # "lConfigItem":Lc8/Dzb;
    .end local v4    # "lLocalConfigItem":Lc8/Dzb;
    :cond_5
    monitor-exit p0

    return-object v5
.end method

.method private final declared-synchronized _updateLocalConfigEntities(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Dzb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "aDBEntityList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc8/Azb;->mLocalDBConfigEntities:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addConfBiz(Lc8/Gzb;)V
    .locals 6
    .param p1, "aBusiness"    # Lc8/Gzb;

    .prologue
    .line 131
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 132
    :try_start_0
    iget-object v5, p0, Lc8/Azb;->mConfBizList:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p1}, Lc8/Gzb;->getOrangeGroupnames()[Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "lGroupnames":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 135
    .local v2, "lGroupname":Ljava/lang/String;
    iget-object v5, p0, Lc8/Azb;->mConfBizMap:Ljava/util/Map;

    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "lGroupname":Ljava/lang/String;
    .end local v3    # "lGroupnames":[Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_0
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method protected final declared-synchronized deleteDBConfigEntity(Ljava/lang/String;)V
    .locals 4
    .param p1, "aGroupname"    # Ljava/lang/String;

    .prologue
    .line 204
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 205
    :try_start_0
    iget-object v3, p0, Lc8/Azb;->mLocalDBConfigEntities:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 206
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 207
    .local v1, "lDeletedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    iget-object v3, p0, Lc8/Azb;->mLocalDBConfigEntities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Dzb;

    .line 208
    .local v2, "lEntity":Lc8/Dzb;
    invoke-virtual {v2}, Lc8/Dzb;->getGroupname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {v2}, Lc8/Dzb;->delete()V

    .line 210
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lDeletedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    .end local v2    # "lEntity":Lc8/Dzb;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 213
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "lDeletedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Dzb;

    .line 214
    .restart local v2    # "lEntity":Lc8/Dzb;
    iget-object v3, p0, Lc8/Azb;->mLocalDBConfigEntities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 218
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lDeletedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    .end local v2    # "lEntity":Lc8/Dzb;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method protected final dispatchLocalCacheConfigs()V
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lc8/Azb;->getLocalDBConfigEntities()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Azb;->_dispatchConfig(Ljava/util/List;)V

    .line 279
    return-void
.end method

.method protected final declared-synchronized getLocalDBConfigEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Dzb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Azb;->mLocalDBConfigEntities:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized init()V
    .locals 4

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lc8/Azb;->_loadAllDBConfig()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc8/Azb;->mLocalDBConfigEntities:Ljava/util/List;

    .line 177
    iget-object v2, p0, Lc8/Azb;->mLocalDBConfigEntities:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/Azb;->mLocalDBConfigEntities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lc8/Azb;->mDefaultWhiteConfigs:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 180
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lc8/Azb;->mDefaultWhiteConfigs:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "lJsonObj":Lorg/json/JSONObject;
    invoke-static {v1}, Lc8/Czb;->convertOnlineJsonConfToUTDBConfigEntities(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc8/Azb;->mLocalDBConfigEntities:Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v1    # "lJsonObj":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 176
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeConfBiz(Lc8/Gzb;)V
    .locals 6
    .param p1, "aBusiness"    # Lc8/Gzb;

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lc8/Azb;->mConfBizList:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p1}, Lc8/Gzb;->getOrangeGroupnames()[Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "lGroupnames":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 149
    .local v2, "lGroupname":Ljava/lang/String;
    iget-object v5, p0, Lc8/Azb;->mConfBizMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v2    # "lGroupname":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .line 146
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "lGroupnames":[Ljava/lang/String;
    .end local v4    # "len$":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public abstract requestOnlineConfig()V
.end method

.method public setDefaultWhiteConfigs(Ljava/lang/String;)V
    .locals 0
    .param p1, "aConfigText"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lc8/Azb;->mDefaultWhiteConfigs:Ljava/lang/String;

    .line 43
    return-void
.end method

.method protected final declared-synchronized updateAndDispatch(Lc8/Dzb;Z)V
    .locals 2
    .param p1, "aNewConfigEntity"    # Lc8/Dzb;
    .param p2, "aCleanDB"    # Z

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 352
    .local v0, "lConfigEntities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-virtual {p0, v0, p2}, Lc8/Azb;->updateAndDispatch(Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 351
    .end local v0    # "lConfigEntities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized updateAndDispatch(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "nameapace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p2, :cond_2

    .line 359
    :try_start_0
    sget-object v4, Lc8/Azb;->TAG_CONFIG_TIMESTAMP:Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 360
    .local v1, "timestamp":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 361
    invoke-static {}, Lc8/Uzb;->getInstance()Lc8/Uzb;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lc8/Uzb;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :cond_0
    const-wide/16 v2, 0x0

    .line 364
    .local v2, "timestampLong":J
    if-eqz v1, :cond_1

    .line 366
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 371
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {p1, p2, v2, v3}, Lc8/Czb;->convertKVToDBConfigEntity(Ljava/lang/String;Ljava/util/Map;J)Lc8/Dzb;

    move-result-object v0

    .line 372
    .local v0, "lOnlineEitity":Lc8/Dzb;
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lc8/Azb;->updateAndDispatch(Lc8/Dzb;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    .end local v0    # "lOnlineEitity":Lc8/Dzb;
    .end local v1    # "timestamp":Ljava/lang/String;
    .end local v2    # "timestampLong":J
    :cond_2
    monitor-exit p0

    return-void

    .line 368
    .restart local v1    # "timestamp":Ljava/lang/String;
    .restart local v2    # "timestampLong":J
    :catch_0
    move-exception v4

    :try_start_3
    const-string/jumbo v4, "parse Timestamp error"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "timestamp"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 357
    .end local v1    # "timestamp":Ljava/lang/String;
    .end local v2    # "timestampLong":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected final declared-synchronized updateAndDispatch(Ljava/util/List;Z)V
    .locals 2
    .param p2, "aCleanDB"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Dzb;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "aNewConfigEntities":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    monitor-enter p0

    if-nez p1, :cond_1

    .line 333
    :try_start_0
    invoke-direct {p0}, Lc8/Azb;->_dispatchNonConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 336
    :cond_1
    if-eqz p2, :cond_2

    .line 337
    :try_start_1
    invoke-direct {p0}, Lc8/Azb;->_clearAllOnlineConfig()V

    .line 340
    :cond_2
    invoke-direct {p0, p1}, Lc8/Azb;->_mergeAndSaveConfig(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 341
    .local v0, "lNeedDispatchConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 345
    invoke-direct {p0, v0}, Lc8/Azb;->_dispatchConfig(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 332
    .end local v0    # "lNeedDispatchConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/UTDBConfigEntity;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
