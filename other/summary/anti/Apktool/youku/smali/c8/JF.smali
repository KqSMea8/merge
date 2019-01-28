.class public Lc8/JF;
.super Ljava/lang/Object;
.source "WVJsMonitor.java"

# interfaces
.implements Lc8/IF;


# static fields
.field public static final EVENT_ID:I = 0x3bc6

.field public static final TYPE_CALL:I = 0x0

.field public static final TYPE_CALLBACK:I = 0x1

.field public static final TYPE_ERROR:I = 0x3

.field public static final TYPE_FIREEVENT:I = 0x2

.field private static final ignoreEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ignoreObjectName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "GUtil"

    aput-object v1, v0, v2

    const-string/jumbo v1, "GCanvas"

    aput-object v1, v0, v3

    const-string/jumbo v1, "GMedia"

    aput-object v1, v0, v4

    const-string/jumbo v1, "WVTBUserTrack"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/JF;->ignoreObjectName:Ljava/util/List;

    .line 27
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "WindVaneReady"

    aput-object v1, v0, v2

    const-string/jumbo v1, "WV.Event.Key.Back"

    aput-object v1, v0, v3

    const-string/jumbo v1, "WV.Event.APP.Background"

    aput-object v1, v0, v4

    const-string/jumbo v1, "WV.Event.APP.Active"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/JF;->ignoreEvent:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static sendToUt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "type"    # I
    .param p1, "objectName"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "ret"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 33
    if-eqz p1, :cond_0

    sget-object v0, Lc8/JF;->ignoreObjectName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    .end local p3    # "ret":Ljava/lang/String;
    :goto_0
    return-void

    .line 36
    .restart local p3    # "ret":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x3bc6

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    const-string/jumbo v0, "-"

    move-object v1, v0

    :goto_1
    if-nez p3, :cond_2

    const-string/jumbo p3, "-"

    .end local p3    # "ret":Ljava/lang/String;
    :cond_2
    if-eqz p4, :cond_4

    new-array v0, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    :goto_2
    invoke-static {v2, v3, v1, p3, v0}, Lc8/FF;->commitEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .restart local p3    # "ret":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v6

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .end local p3    # "ret":Ljava/lang/String;
    :cond_4
    new-array v0, v6, [Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public didCallAtURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "objectName"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Lc8/JF;->sendToUt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public didCallBackAtURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "objectName"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "returnCode"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-static {v0, p1, p2, p4, p3}, Lc8/JF;->sendToUt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public didOccurError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "objectName"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "error"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x3

    invoke-static {v0, p1, p2, p3, p4}, Lc8/JF;->sendToUt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
