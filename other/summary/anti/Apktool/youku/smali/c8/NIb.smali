.class public Lc8/NIb;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/MIb;
    }
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NeedToResolve:I = 0x1

.field public static final TypeNameRedirect:I = 0x2


# instance fields
.field public config:Lc8/XIb;

.field protected contex:Lc8/WIb;

.field private contextArray:[Lc8/WIb;

.field private contextArrayIndex:I

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field protected extraProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/dJb;",
            ">;"
        }
    .end annotation
.end field

.field protected extraTypeProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/eJb;",
            ">;"
        }
    .end annotation
.end field

.field public fieldTypeResolver:Lc8/gJb;

.field public final lexer:Lc8/PIb;

.field public resolveStatus:I

.field private resolveTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/MIb;",
            ">;"
        }
    .end annotation
.end field

.field public final symbolTable:Lc8/aJb;


# direct methods
.method public constructor <init>(Lc8/PIb;)V
    .locals 1
    .param p1, "lexer"    # Lc8/PIb;

    .prologue
    .line 134
    sget-object v0, Lc8/XIb;->global:Lc8/XIb;

    invoke-direct {p0, p1, v0}, Lc8/NIb;-><init>(Lc8/PIb;Lc8/XIb;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lc8/PIb;Lc8/XIb;)V
    .locals 5
    .param p1, "lexer"    # Lc8/PIb;
    .param p2, "config"    # Lc8/XIb;

    .prologue
    const/16 v1, 0x1a

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v2, Lc8/AIb;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v2, p0, Lc8/NIb;->dateFormatPattern:Ljava/lang/String;

    .line 82
    iput v4, p0, Lc8/NIb;->contextArrayIndex:I

    .line 90
    iput v4, p0, Lc8/NIb;->resolveStatus:I

    .line 92
    iput-object v3, p0, Lc8/NIb;->extraTypeProviders:Ljava/util/List;

    .line 93
    iput-object v3, p0, Lc8/NIb;->extraProcessors:Ljava/util/List;

    .line 94
    iput-object v3, p0, Lc8/NIb;->fieldTypeResolver:Lc8/gJb;

    .line 138
    iput-object p1, p0, Lc8/NIb;->lexer:Lc8/PIb;

    .line 139
    iput-object p2, p0, Lc8/NIb;->config:Lc8/XIb;

    .line 140
    iget-object v2, p2, Lc8/XIb;->symbolTable:Lc8/aJb;

    iput-object v2, p0, Lc8/NIb;->symbolTable:Lc8/aJb;

    .line 142
    iget-char v2, p1, Lc8/PIb;->ch:C

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_1

    .line 143
    iget v2, p1, Lc8/PIb;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lc8/PIb;->bp:I

    .line 144
    .local v0, "index":I
    iget v2, p1, Lc8/PIb;->len:I

    if-lt v0, v2, :cond_0

    .line 146
    :goto_0
    iput-char v1, p1, Lc8/PIb;->ch:C

    .line 147
    const/16 v1, 0xc

    iput v1, p1, Lc8/PIb;->token:I

    .line 157
    .end local v0    # "index":I
    :goto_1
    return-void

    .line 144
    .restart local v0    # "index":I
    :cond_0
    iget-object v1, p1, Lc8/PIb;->text:Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 148
    .end local v0    # "index":I
    :cond_1
    iget-char v2, p1, Lc8/PIb;->ch:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_3

    .line 149
    iget v2, p1, Lc8/PIb;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lc8/PIb;->bp:I

    .line 150
    .restart local v0    # "index":I
    iget v2, p1, Lc8/PIb;->len:I

    if-lt v0, v2, :cond_2

    .line 152
    :goto_2
    iput-char v1, p1, Lc8/PIb;->ch:C

    .line 153
    const/16 v1, 0xe

    iput v1, p1, Lc8/PIb;->token:I

    goto :goto_1

    .line 150
    :cond_2
    iget-object v1, p1, Lc8/PIb;->text:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 155
    .end local v0    # "index":I
    :cond_3
    invoke-virtual {p1}, Lc8/PIb;->nextToken()V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lc8/XIb;->global:Lc8/XIb;

    sget v1, Lc8/AIb;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Lc8/NIb;-><init>(Ljava/lang/String;Lc8/XIb;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc8/XIb;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lc8/XIb;

    .prologue
    .line 122
    new-instance v0, Lc8/PIb;

    sget v1, Lc8/AIb;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lc8/PIb;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lc8/NIb;-><init>(Lc8/PIb;Lc8/XIb;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc8/XIb;I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lc8/XIb;
    .param p3, "features"    # I

    .prologue
    .line 126
    new-instance v0, Lc8/PIb;

    invoke-direct {v0, p1, p3}, Lc8/PIb;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lc8/NIb;-><init>(Lc8/PIb;Lc8/XIb;)V

    .line 127
    return-void
.end method

.method public constructor <init>([CILc8/XIb;I)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "length"    # I
    .param p3, "config"    # Lc8/XIb;
    .param p4, "features"    # I

    .prologue
    .line 130
    new-instance v0, Lc8/PIb;

    invoke-direct {v0, p1, p2, p4}, Lc8/PIb;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lc8/NIb;-><init>(Lc8/PIb;Lc8/XIb;)V

    .line 131
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3
    .param p1, "token"    # I

    .prologue
    .line 1444
    iget-object v0, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v0, v0, Lc8/PIb;->token:I

    if-ne v0, p1, :cond_0

    .line 1445
    iget-object v0, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v0}, Lc8/PIb;->nextToken()V

    return-void

    .line 1447
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v2, v2, Lc8/PIb;->token:I

    .line 1448
    invoke-static {v2}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addResolveTask(Lc8/MIb;)V
    .locals 2
    .param p1, "task"    # Lc8/MIb;

    .prologue
    .line 1295
    iget-object v0, p0, Lc8/NIb;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1296
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/NIb;->resolveTaskList:Ljava/util/List;

    .line 1298
    :cond_0
    iget-object v0, p0, Lc8/NIb;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    return-void
.end method

.method protected checkListResolve(Ljava/util/Collection;)V
    .locals 5
    .param p1, "array"    # Ljava/util/Collection;

    .prologue
    const/4 v4, 0x0

    .line 1048
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1049
    invoke-virtual {p0}, Lc8/NIb;->getLastResolveTask()Lc8/MIb;

    move-result-object v0

    .line 1050
    .local v0, "task":Lc8/MIb;
    new-instance v2, Lc8/YIb;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, v1, v3}, Lc8/YIb;-><init>(Lc8/NIb;Ljava/util/List;I)V

    iput-object v2, v0, Lc8/MIb;->fieldDeserializer:Lc8/fJb;

    .line 1051
    iget-object v1, p0, Lc8/NIb;->contex:Lc8/WIb;

    iput-object v1, v0, Lc8/MIb;->ownerContext:Lc8/WIb;

    .line 1052
    iput v4, p0, Lc8/NIb;->resolveStatus:I

    .line 1059
    :goto_0
    return-void

    .line 1054
    .end local v0    # "task":Lc8/MIb;
    :cond_0
    invoke-virtual {p0}, Lc8/NIb;->getLastResolveTask()Lc8/MIb;

    move-result-object v0

    .line 1055
    .restart local v0    # "task":Lc8/MIb;
    new-instance v1, Lc8/YIb;

    invoke-direct {v1, p1}, Lc8/YIb;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lc8/MIb;->fieldDeserializer:Lc8/fJb;

    .line 1056
    iget-object v1, p0, Lc8/NIb;->contex:Lc8/WIb;

    iput-object v1, v0, Lc8/MIb;->ownerContext:Lc8/WIb;

    .line 1057
    iput v4, p0, Lc8/NIb;->resolveStatus:I

    goto :goto_0
.end method

.method protected checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1063
    new-instance v0, Lc8/YIb;

    invoke-direct {v0, p1, p2}, Lc8/YIb;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1064
    .local v0, "fieldResolver":Lc8/YIb;
    invoke-virtual {p0}, Lc8/NIb;->getLastResolveTask()Lc8/MIb;

    move-result-object v1

    .line 1065
    .local v1, "task":Lc8/MIb;
    iput-object v0, v1, Lc8/MIb;->fieldDeserializer:Lc8/fJb;

    .line 1066
    iget-object v2, p0, Lc8/NIb;->contex:Lc8/WIb;

    iput-object v2, v1, Lc8/MIb;->ownerContext:Lc8/WIb;

    .line 1067
    const/4 v2, 0x0

    iput v2, p0, Lc8/NIb;->resolveStatus:I

    .line 1068
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1454
    :try_start_0
    iget-object v0, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v0, v0, Lc8/PIb;->token:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    .line 1455
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not close json text, token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v2, v2, Lc8/PIb;->token:I

    invoke-static {v2}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v1}, Lc8/PIb;->close()V

    throw v0

    :cond_0
    iget-object v0, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v0}, Lc8/PIb;->close()V

    .line 1459
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .prologue
    .line 1440
    iget-object v0, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v0, p1, p2}, Lc8/PIb;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    .line 1441
    return-void
.end method

.method public getDateFomartPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lc8/NIb;->dateFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lc8/NIb;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lc8/NIb;->dateFormatPattern:Ljava/lang/String;

    iget-object v2, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v2, v2, Lc8/PIb;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lc8/NIb;->dateFormat:Ljava/text/DateFormat;

    .line 103
    iget-object v0, p0, Lc8/NIb;->dateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v1, v1, Lc8/PIb;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lc8/NIb;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getExtraProcessors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/dJb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1306
    iget-object v0, p0, Lc8/NIb;->extraProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1307
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/NIb;->extraProcessors:Ljava/util/List;

    .line 1309
    :cond_0
    iget-object v0, p0, Lc8/NIb;->extraProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getExtraTypeProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/eJb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1313
    iget-object v0, p0, Lc8/NIb;->extraTypeProviders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1314
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/NIb;->extraTypeProviders:Ljava/util/List;

    .line 1316
    :cond_0
    iget-object v0, p0, Lc8/NIb;->extraTypeProviders:Ljava/util/List;

    return-object v0
.end method

.method protected getLastResolveTask()Lc8/MIb;
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lc8/NIb;->resolveTaskList:Ljava/util/List;

    iget-object v1, p0, Lc8/NIb;->resolveTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/MIb;

    return-object v0
.end method

.method public handleResovleTask(Ljava/lang/Object;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1463
    iget-object v8, p0, Lc8/NIb;->resolveTaskList:Ljava/util/List;

    if-nez v8, :cond_1

    .line 1493
    :cond_0
    return-void

    .line 1467
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v8, p0, Lc8/NIb;->resolveTaskList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 1468
    iget-object v8, p0, Lc8/NIb;->resolveTaskList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/MIb;

    .line 1469
    .local v7, "task":Lc8/MIb;
    iget-object v0, v7, Lc8/MIb;->fieldDeserializer:Lc8/fJb;

    .line 1471
    .local v0, "fieldDeser":Lc8/fJb;
    if-eqz v0, :cond_6

    .line 1475
    const/4 v3, 0x0

    .line 1476
    .local v3, "object":Ljava/lang/Object;
    iget-object v8, v7, Lc8/MIb;->ownerContext:Lc8/WIb;

    if-eqz v8, :cond_2

    .line 1477
    iget-object v8, v7, Lc8/MIb;->ownerContext:Lc8/WIb;

    iget-object v3, v8, Lc8/WIb;->object:Ljava/lang/Object;

    .line 1480
    .end local v3    # "object":Ljava/lang/Object;
    :cond_2
    invoke-static {v7}, Lc8/MIb;->access$000(Lc8/MIb;)Ljava/lang/String;

    move-result-object v4

    .line 1481
    .local v4, "ref":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1482
    .local v5, "refValue":Ljava/lang/Object;
    const-string/jumbo v8, "$"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1483
    const/4 v2, 0x0

    .end local v5    # "refValue":Ljava/lang/Object;
    .local v2, "j":I
    :goto_1
    iget v8, p0, Lc8/NIb;->contextArrayIndex:I

    if-ge v2, v8, :cond_5

    .line 1484
    iget-object v8, p0, Lc8/NIb;->contextArray:[Lc8/WIb;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lc8/WIb;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1485
    iget-object v8, p0, Lc8/NIb;->contextArray:[Lc8/WIb;

    aget-object v8, v8, v2

    iget-object v5, v8, Lc8/WIb;->object:Ljava/lang/Object;

    .line 1483
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1489
    .end local v2    # "j":I
    .restart local v5    # "refValue":Ljava/lang/Object;
    :cond_4
    invoke-static {v7}, Lc8/MIb;->access$100(Lc8/MIb;)Lc8/WIb;

    move-result-object v8

    iget-object v5, v8, Lc8/WIb;->object:Ljava/lang/Object;

    .line 1491
    .end local v5    # "refValue":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0, v3, v5}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1467
    .end local v4    # "ref":Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public parse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/NIb;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1358
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v11, v11, Lc8/PIb;->token:I

    packed-switch v11, :pswitch_data_0

    .line 1435
    :pswitch_0
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "syntax error, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v13}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1360
    :pswitch_1
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->nextToken()V

    .line 1361
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1362
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v4, p1}, Lc8/NIb;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1430
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :goto_0
    return-object v4

    .line 1365
    :pswitch_2
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->nextToken()V

    .line 1366
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 1367
    .local v8, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v8, p1}, Lc8/NIb;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v4, v8

    .line 1368
    goto :goto_0

    .line 1370
    .end local v8    # "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    :pswitch_3
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1371
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v0, p1}, Lc8/NIb;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v4, v0

    .line 1372
    goto :goto_0

    .line 1374
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :pswitch_4
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v11, v11, Lc8/PIb;->features:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_0

    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1377
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    invoke-virtual {p0, v3, p1}, Lc8/NIb;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 1374
    .end local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_1

    .line 1379
    :pswitch_5
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 1380
    .local v1, "intValue":Ljava/lang/Number;
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->nextToken()V

    move-object v4, v1

    .line 1381
    goto :goto_0

    .line 1383
    .end local v1    # "intValue":Ljava/lang/Number;
    :pswitch_6
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v11, v11, Lc8/PIb;->features:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_1

    const/4 v9, 0x1

    .line 1384
    .local v9, "useBigDecimal":Z
    :goto_2
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11, v9}, Lc8/PIb;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v10

    .line 1385
    .local v10, "value":Ljava/lang/Number;
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->nextToken()V

    move-object v4, v10

    .line 1386
    goto :goto_0

    .line 1383
    .end local v9    # "useBigDecimal":Z
    .end local v10    # "value":Ljava/lang/Number;
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 1388
    :pswitch_7
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 1389
    .local v5, "stringLiteral":Ljava/lang/String;
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lc8/PIb;->nextToken(I)V

    .line 1391
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v11, v11, Lc8/PIb;->features:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_3

    .line 1392
    new-instance v2, Lc8/PIb;

    invoke-direct {v2, v5}, Lc8/PIb;-><init>(Ljava/lang/String;)V

    .line 1394
    .local v2, "iso8601Lexer":Lc8/PIb;
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v2, v11}, Lc8/PIb;->scanISO8601DateIfMatch(Z)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1395
    iget-object v11, v2, Lc8/PIb;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1398
    invoke-virtual {v2}, Lc8/PIb;->close()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Lc8/PIb;->close()V

    .end local v2    # "iso8601Lexer":Lc8/PIb;
    :cond_3
    move-object v4, v5

    .line 1402
    goto/16 :goto_0

    .line 1398
    .restart local v2    # "iso8601Lexer":Lc8/PIb;
    :catchall_0
    move-exception v11

    invoke-virtual {v2}, Lc8/PIb;->close()V

    throw v11

    .line 1405
    .end local v2    # "iso8601Lexer":Lc8/PIb;
    .end local v5    # "stringLiteral":Ljava/lang/String;
    :pswitch_8
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->nextToken()V

    .line 1406
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1408
    :pswitch_9
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lc8/PIb;->nextToken(I)V

    .line 1409
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1411
    :pswitch_a
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lc8/PIb;->nextToken(I)V

    .line 1412
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1414
    :pswitch_b
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v12, 0x12

    invoke-virtual {v11, v12}, Lc8/PIb;->nextToken(I)V

    .line 1416
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v11, v11, Lc8/PIb;->token:I

    const/16 v12, 0x12

    if-eq v11, v12, :cond_4

    .line 1417
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "syntax error, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v13}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1419
    :cond_4
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Lc8/PIb;->nextToken(I)V

    .line 1421
    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lc8/NIb;->accept(I)V

    .line 1422
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->integerValue()Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 1423
    .local v6, "time":J
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lc8/NIb;->accept(I)V

    .line 1425
    const/16 v11, 0xb

    invoke-virtual {p0, v11}, Lc8/NIb;->accept(I)V

    .line 1427
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    .line 1429
    .end local v6    # "time":J
    :pswitch_c
    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->isBlankInput()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1430
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1432
    :cond_5
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "syntax error, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v13}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1358
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 687
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1, v0}, Lc8/NIb;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 689
    return-object v0
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .param p2, "array"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 693
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lc8/NIb;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 694
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;

    .prologue
    .line 698
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/NIb;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 699
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 12
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x4

    const/4 v6, 0x0

    const/16 v10, 0x10

    .line 703
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v7, v7, Lc8/PIb;->token:I

    const/16 v8, 0x15

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v7, v7, Lc8/PIb;->token:I

    const/16 v8, 0x16

    if-ne v7, v8, :cond_1

    .line 704
    :cond_0
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v7}, Lc8/PIb;->nextToken()V

    .line 707
    :cond_1
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v7, v7, Lc8/PIb;->token:I

    const/16 v8, 0xe

    if-eq v7, v8, :cond_2

    .line 708
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exepct \'[\', but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v8, v8, Lc8/PIb;->token:I

    invoke-static {v8}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v8}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 712
    :cond_2
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, p1, :cond_4

    .line 713
    sget-object v1, Lc8/uJb;->instance:Lc8/uJb;

    .line 714
    .local v1, "deserializer":Lc8/hJb;
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lc8/PIb;->nextToken(I)V

    .line 723
    :goto_0
    iget-object v0, p0, Lc8/NIb;->contex:Lc8/WIb;

    .line 724
    .local v0, "context":Lc8/WIb;
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-boolean v7, v7, Lc8/PIb;->disableCircularReferenceDetect:Z

    if-nez v7, :cond_3

    .line 725
    iget-object v7, p0, Lc8/NIb;->contex:Lc8/WIb;

    invoke-virtual {p0, v7, p2, p3}, Lc8/NIb;->setContext(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)Lc8/WIb;

    .line 728
    :cond_3
    const/4 v2, 0x0

    .line 729
    .local v2, "i":I
    :goto_1
    :try_start_0
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v7, v7, Lc8/PIb;->token:I

    if-ne v7, v10, :cond_6

    .line 730
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v7}, Lc8/PIb;->nextToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 774
    :catchall_0
    move-exception v6

    iput-object v0, p0, Lc8/NIb;->contex:Lc8/WIb;

    throw v6

    .line 715
    .end local v0    # "context":Lc8/WIb;
    .end local v1    # "deserializer":Lc8/hJb;
    .end local v2    # "i":I
    :cond_4
    const-class v7, Ljava/lang/String;

    if-ne v7, p1, :cond_5

    .line 716
    sget-object v1, Lc8/LJb;->instance:Lc8/LJb;

    .line 717
    .restart local v1    # "deserializer":Lc8/hJb;
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v7, v11}, Lc8/PIb;->nextToken(I)V

    goto :goto_0

    .line 719
    .end local v1    # "deserializer":Lc8/hJb;
    :cond_5
    iget-object v7, p0, Lc8/NIb;->config:Lc8/XIb;

    invoke-virtual {v7, p1}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v1

    .line 720
    .restart local v1    # "deserializer":Lc8/hJb;
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lc8/PIb;->nextToken(I)V

    goto :goto_0

    .line 734
    .restart local v0    # "context":Lc8/WIb;
    .restart local v2    # "i":I
    :cond_6
    :try_start_1
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v7, v7, Lc8/PIb;->token:I

    const/16 v8, 0xf

    if-eq v7, v8, :cond_e

    .line 738
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, p1, :cond_9

    .line 739
    sget-object v7, Lc8/uJb;->instance:Lc8/uJb;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, p0, v8, v9}, Lc8/uJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 740
    .local v4, "val":Ljava/lang/Object;
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 768
    .end local v4    # "val":Ljava/lang/Object;
    :cond_7
    :goto_2
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v7, v7, Lc8/PIb;->token:I

    if-ne v7, v10, :cond_8

    .line 769
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v7}, Lc8/PIb;->nextToken()V

    .line 728
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 741
    :cond_9
    const-class v7, Ljava/lang/String;

    if-ne v7, p1, :cond_c

    .line 743
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v7, v7, Lc8/PIb;->token:I

    if-ne v7, v11, :cond_a

    .line 744
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v7}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 745
    .local v5, "value":Ljava/lang/String;
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lc8/PIb;->nextToken(I)V

    .line 753
    :goto_3
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 747
    .end local v5    # "value":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 748
    .local v3, "obj":Ljava/lang/Object;
    if-nez v3, :cond_b

    move-object v5, v6

    .line 750
    .restart local v5    # "value":Ljava/lang/String;
    :goto_4
    goto :goto_3

    .end local v5    # "value":Ljava/lang/String;
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 756
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_c
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v7, v7, Lc8/PIb;->token:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_d

    .line 757
    iget-object v7, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v7}, Lc8/PIb;->nextToken()V

    .line 758
    const/4 v4, 0x0

    .line 762
    :goto_5
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 763
    iget v7, p0, Lc8/NIb;->resolveStatus:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 764
    invoke-virtual {p0, p2}, Lc8/NIb;->checkListResolve(Ljava/util/Collection;)V

    goto :goto_2

    .line 760
    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, p0, p1, v7}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .restart local v4    # "val":Ljava/lang/Object;
    goto :goto_5

    .line 774
    .end local v4    # "val":Ljava/lang/Object;
    :cond_e
    iput-object v0, p0, Lc8/NIb;->contex:Lc8/WIb;

    .line 777
    iget-object v6, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v6, v10}, Lc8/PIb;->nextToken(I)V

    .line 778
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;)V
    .locals 1
    .param p1, "array"    # Ljava/util/Collection;

    .prologue
    .line 1084
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/NIb;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1085
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 18
    .param p1, "array"    # Ljava/util/Collection;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1089
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v13, v15, Lc8/PIb;->token:I

    .line 1090
    .local v13, "token":I
    const/16 v15, 0x15

    if-eq v13, v15, :cond_0

    const/16 v15, 0x16

    if-ne v13, v15, :cond_1

    .line 1091
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v15}, Lc8/PIb;->nextToken()V

    .line 1092
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v13, v15, Lc8/PIb;->token:I

    .line 1095
    :cond_1
    const/16 v15, 0xe

    if-eq v13, v15, :cond_2

    .line 1096
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "syntax error, expect [, actual "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v13}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", pos "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lc8/PIb;->pos:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1099
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-boolean v5, v15, Lc8/PIb;->disableCircularReferenceDetect:Z

    .line 1101
    .local v5, "disableCircularReferenceDetect":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/NIb;->contex:Lc8/WIb;

    .line 1102
    .local v4, "context":Lc8/WIb;
    if-nez v5, :cond_3

    .line 1103
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->contex:Lc8/WIb;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lc8/NIb;->setContext(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)Lc8/WIb;

    .line 1108
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-char v3, v15, Lc8/PIb;->ch:C

    .line 1109
    .local v3, "ch":C
    const/16 v15, 0x22

    if-eq v3, v15, :cond_b

    .line 1110
    const/16 v15, 0x5d

    if-ne v3, v15, :cond_5

    .line 1111
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v15}, Lc8/PIb;->next()C

    .line 1112
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    if-nez v5, :cond_4

    .line 1289
    move-object/from16 v0, p0

    iput-object v4, v0, Lc8/NIb;->contex:Lc8/WIb;

    .line 1292
    :cond_4
    :goto_0
    return-void

    .line 1115
    :cond_5
    const/16 v15, 0x7b

    if-ne v3, v15, :cond_9

    .line 1118
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lc8/PIb;->bp:I

    .line 1119
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v15, v15, Lc8/PIb;->len:I

    if-lt v8, v15, :cond_8

    const/16 v15, 0x1a

    .line 1121
    :goto_1
    move-object/from16 v0, v16

    iput-char v15, v0, Lc8/PIb;->ch:C

    .line 1123
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0xc

    move/from16 v0, v16

    iput v0, v15, Lc8/PIb;->token:I

    .line 1127
    .end local v8    # "index":I
    :goto_2
    const/4 v6, 0x0

    .line 1137
    .local v6, "first_quote":Z
    :goto_3
    const/4 v7, 0x0

    .line 1139
    .local v7, "i":I
    :goto_4
    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-char v15, v15, Lc8/PIb;->ch:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 1140
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->scanStringValue(C)Ljava/lang/String;

    move-result-object v14

    .line 1142
    .local v14, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-char v3, v15, Lc8/PIb;->ch:C

    .line 1143
    const/16 v15, 0x2c

    if-ne v3, v15, :cond_e

    .line 1146
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lc8/PIb;->bp:I

    .line 1147
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v8, v0, :cond_d

    const/16 v3, 0x1a

    .line 1149
    .end local v3    # "ch":C
    :goto_5
    iput-char v3, v15, Lc8/PIb;->ch:C

    .line 1151
    .restart local v3    # "ch":C
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1152
    move-object/from16 v0, p0

    iget v15, v0, Lc8/NIb;->resolveStatus:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1153
    invoke-virtual/range {p0 .. p1}, Lc8/NIb;->checkListResolve(Ljava/util/Collection;)V

    .line 1156
    :cond_6
    const/16 v15, 0x22

    if-eq v3, v15, :cond_14

    .line 1159
    const/4 v6, 0x0

    .line 1162
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v15}, Lc8/PIb;->nextToken()V

    .line 1182
    .end local v8    # "index":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v13, v15, Lc8/PIb;->token:I

    .line 1183
    :goto_7
    const/16 v15, 0x10

    if-ne v13, v15, :cond_12

    .line 1184
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v15}, Lc8/PIb;->nextToken()V

    .line 1185
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v13, v15, Lc8/PIb;->token:I

    .line 1186
    goto :goto_7

    .line 1119
    .end local v6    # "first_quote":Z
    .end local v7    # "i":I
    .restart local v8    # "index":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v15, v15, Lc8/PIb;->text:Ljava/lang/String;

    .line 1121
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto/16 :goto_1

    .line 1125
    .end local v8    # "index":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0xc

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1288
    .end local v3    # "ch":C
    :catchall_0
    move-exception v15

    if-nez v5, :cond_a

    .line 1289
    move-object/from16 v0, p0

    iput-object v4, v0, Lc8/NIb;->contex:Lc8/WIb;

    :cond_a
    throw v15

    .line 1129
    .restart local v3    # "ch":C
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v15, v15, Lc8/PIb;->features:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-nez v15, :cond_c

    .line 1130
    const/4 v6, 0x1

    .restart local v6    # "first_quote":Z
    goto/16 :goto_3

    .line 1132
    .end local v6    # "first_quote":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->nextToken(I)V

    .line 1133
    const/4 v6, 0x0

    .restart local v6    # "first_quote":Z
    goto/16 :goto_3

    .line 1147
    .restart local v7    # "i":I
    .restart local v8    # "index":I
    .restart local v14    # "value":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1149
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto/16 :goto_5

    .line 1163
    .end local v8    # "index":I
    :cond_e
    const/16 v15, 0x5d

    if-ne v3, v15, :cond_11

    .line 1166
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lc8/PIb;->bp:I

    .line 1167
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v15, v15, Lc8/PIb;->len:I

    if-lt v8, v15, :cond_10

    const/16 v15, 0x1a

    .line 1169
    :goto_8
    move-object/from16 v0, v16

    iput-char v15, v0, Lc8/PIb;->ch:C

    .line 1171
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1172
    move-object/from16 v0, p0

    iget v15, v0, Lc8/NIb;->resolveStatus:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 1173
    invoke-virtual/range {p0 .. p1}, Lc8/NIb;->checkListResolve(Ljava/util/Collection;)V

    .line 1175
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1288
    if-nez v5, :cond_4

    .line 1289
    move-object/from16 v0, p0

    iput-object v4, v0, Lc8/NIb;->contex:Lc8/WIb;

    goto/16 :goto_0

    .line 1167
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v15, v15, Lc8/PIb;->text:Ljava/lang/String;

    .line 1169
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_8

    .line 1178
    .end local v8    # "index":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v15}, Lc8/PIb;->nextToken()V

    goto/16 :goto_6

    .line 1189
    .end local v14    # "value":Ljava/lang/String;
    :cond_12
    packed-switch v13, :pswitch_data_0

    .line 1255
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v14

    .line 1259
    :goto_9
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1260
    move-object/from16 v0, p0

    iget v15, v0, Lc8/NIb;->resolveStatus:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 1261
    invoke-virtual/range {p0 .. p1}, Lc8/NIb;->checkListResolve(Ljava/util/Collection;)V

    .line 1263
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v15, v15, Lc8/PIb;->token:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 1265
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-char v3, v15, Lc8/PIb;->ch:C

    .line 1266
    const/16 v15, 0x22

    if-ne v3, v15, :cond_19

    .line 1267
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lc8/PIb;->pos:I

    .line 1268
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v15}, Lc8/PIb;->scanString()V

    .line 1137
    :cond_14
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 1191
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v15}, Lc8/PIb;->integerValue()Ljava/lang/Number;

    move-result-object v14

    .line 1192
    .local v14, "value":Ljava/lang/Number;
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->nextToken(I)V

    goto :goto_9

    .line 1195
    .end local v14    # "value":Ljava/lang/Number;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v15, v15, Lc8/PIb;->features:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_15

    .line 1196
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v14

    .line 1200
    .restart local v14    # "value":Ljava/lang/Number;
    :goto_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->nextToken(I)V

    goto/16 :goto_9

    .line 1198
    .end local v14    # "value":Ljava/lang/Number;
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v14

    .restart local v14    # "value":Ljava/lang/Number;
    goto :goto_b

    .line 1203
    .end local v14    # "value":Ljava/lang/Number;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v15}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v12

    .line 1204
    .local v12, "stringLiteral":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->nextToken(I)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v15, v15, Lc8/PIb;->features:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_17

    .line 1207
    new-instance v9, Lc8/PIb;

    invoke-direct {v9, v12}, Lc8/PIb;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v9, "iso8601Lexer":Lc8/PIb;
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lc8/PIb;->scanISO8601DateIfMatch(Z)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 1209
    iget-object v15, v9, Lc8/PIb;->calendar:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    .line 1213
    :goto_c
    invoke-virtual {v9}, Lc8/PIb;->close()V

    goto/16 :goto_9

    .line 1211
    :cond_16
    move-object v14, v12

    .local v14, "value":Ljava/lang/String;
    goto :goto_c

    .line 1215
    .end local v9    # "iso8601Lexer":Lc8/PIb;
    .end local v14    # "value":Ljava/lang/String;
    :cond_17
    move-object v14, v12

    .line 1218
    .restart local v14    # "value":Ljava/lang/String;
    goto/16 :goto_9

    .line 1220
    .end local v12    # "stringLiteral":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :pswitch_4
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1221
    .local v14, "value":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->nextToken(I)V

    goto/16 :goto_9

    .line 1224
    .end local v14    # "value":Ljava/lang/Boolean;
    :pswitch_5
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1225
    .restart local v14    # "value":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->nextToken(I)V

    goto/16 :goto_9

    .line 1229
    .end local v14    # "value":Ljava/lang/Boolean;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v15, v15, Lc8/PIb;->features:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_18

    .line 1230
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v11, v15}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1234
    .local v11, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Lc8/NIb;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1235
    .local v14, "value":Ljava/lang/Object;
    goto/16 :goto_9

    .line 1232
    .end local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "value":Ljava/lang/Object;
    :cond_18
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .restart local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_d

    .line 1237
    .end local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    :pswitch_7
    new-instance v10, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1238
    .local v10, "items":Ljava/util/Collection;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Lc8/NIb;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1239
    move-object v14, v10

    .line 1240
    .local v14, "value":Ljava/util/Collection;
    goto/16 :goto_9

    .line 1242
    .end local v10    # "items":Ljava/util/Collection;
    .end local v14    # "value":Ljava/util/Collection;
    :pswitch_8
    const/4 v14, 0x0

    .line 1243
    .local v14, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->nextToken(I)V

    goto/16 :goto_9

    .line 1246
    .end local v14    # "value":Ljava/lang/Object;
    :pswitch_9
    const/4 v14, 0x0

    .line 1247
    .restart local v14    # "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->nextToken(I)V

    goto/16 :goto_9

    .line 1250
    .end local v14    # "value":Ljava/lang/Object;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lc8/PIb;->nextToken(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1288
    if-nez v5, :cond_4

    .line 1289
    move-object/from16 v0, p0

    iput-object v4, v0, Lc8/NIb;->contex:Lc8/WIb;

    goto/16 :goto_0

    .line 1253
    :pswitch_b
    :try_start_4
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v16, "unclosed jsonArray"

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1269
    :cond_19
    const/16 v15, 0x30

    if-lt v3, v15, :cond_1a

    const/16 v15, 0x39

    if-gt v3, v15, :cond_1a

    .line 1270
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lc8/PIb;->pos:I

    .line 1271
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v15}, Lc8/PIb;->scanNumber()V

    goto/16 :goto_a

    .line 1272
    :cond_1a
    const/16 v15, 0x7b

    if-ne v3, v15, :cond_1c

    .line 1273
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v16, 0xc

    move/from16 v0, v16

    iput v0, v15, Lc8/PIb;->token:I

    .line 1276
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lc8/PIb;->bp:I

    .line 1277
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v15, v15, Lc8/PIb;->len:I

    if-lt v8, v15, :cond_1b

    const/16 v15, 0x1a

    .line 1279
    :goto_e
    move-object/from16 v0, v16

    iput-char v15, v0, Lc8/PIb;->ch:C

    goto/16 :goto_a

    .line 1277
    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v15, v15, Lc8/PIb;->text:Ljava/lang/String;

    .line 1279
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_e

    .line 1282
    .end local v8    # "index":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v15}, Lc8/PIb;->nextToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_a

    .line 1189
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 12
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 781
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 782
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lc8/PIb;->nextToken(I)V

    .line 783
    const/4 v5, 0x0

    .line 890
    :goto_0
    return-object v5

    .line 786
    :cond_0
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/16 v10, 0xe

    if-eq v9, v10, :cond_1

    .line 787
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 790
    :cond_1
    array-length v9, p1

    new-array v5, v9, [Ljava/lang/Object;

    .line 791
    .local v5, "list":[Ljava/lang/Object;
    array-length v9, p1

    if-nez v9, :cond_3

    .line 792
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Lc8/PIb;->nextToken(I)V

    .line 794
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_2

    .line 795
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 798
    :cond_2
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lc8/PIb;->nextToken(I)V

    .line 799
    const/4 v9, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    goto :goto_0

    .line 802
    :cond_3
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lc8/PIb;->nextToken(I)V

    .line 804
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, p1

    if-ge v3, v9, :cond_10

    .line 807
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4

    .line 808
    const/4 v7, 0x0

    .line 809
    .local v7, "value":Ljava/lang/Object;
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lc8/PIb;->nextToken(I)V

    .line 867
    .end local v7    # "value":Ljava/lang/Object;
    :goto_2
    aput-object v7, v5, v3

    .line 869
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_10

    .line 873
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/16 v10, 0x10

    if-eq v9, v10, :cond_e

    .line 874
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 811
    :cond_4
    aget-object v6, p1, v3

    .line 812
    .local v6, "type":Ljava/lang/reflect/Type;
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v6, v9, :cond_5

    const-class v9, Ljava/lang/Integer;

    if-ne v6, v9, :cond_7

    .line 813
    :cond_5
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 814
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v9}, Lc8/PIb;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 815
    .local v7, "value":Ljava/lang/Integer;
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lc8/PIb;->nextToken(I)V

    goto :goto_2

    .line 817
    .end local v7    # "value":Ljava/lang/Integer;
    :cond_6
    invoke-virtual {p0}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v7

    .line 818
    .local v7, "value":Ljava/lang/Object;
    iget-object v9, p0, Lc8/NIb;->config:Lc8/XIb;

    invoke-static {v7, v6, v9}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 820
    .end local v7    # "value":Ljava/lang/Object;
    :cond_7
    const-class v9, Ljava/lang/String;

    if-ne v6, v9, :cond_9

    .line 821
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    .line 822
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v9}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v7

    .line 823
    .local v7, "value":Ljava/lang/String;
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lc8/PIb;->nextToken(I)V

    goto :goto_2

    .line 825
    .end local v7    # "value":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v7

    .line 826
    .local v7, "value":Ljava/lang/Object;
    iget-object v9, p0, Lc8/NIb;->config:Lc8/XIb;

    invoke-static {v7, v6, v9}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_2

    .line 829
    .end local v7    # "value":Ljava/lang/Object;
    :cond_9
    const/4 v4, 0x0

    .line 830
    .local v4, "isArray":Z
    const/4 v1, 0x0

    .line 831
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_a

    .line 832
    instance-of v9, v6, Ljava/lang/Class;

    if-eqz v9, :cond_a

    move-object v0, v6

    .line 833
    check-cast v0, Ljava/lang/Class;

    .line 834
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    .line 835
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 840
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    if-eqz v4, :cond_d

    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/16 v10, 0xe

    if-eq v9, v10, :cond_d

    .line 841
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v8, "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v9, p0, Lc8/NIb;->config:Lc8/XIb;

    invoke-virtual {v9, v1}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v2

    .line 845
    .local v2, "derializer":Lc8/hJb;
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_c

    .line 847
    :goto_3
    const/4 v9, 0x0

    .line 848
    invoke-interface {v2, p0, v6, v9}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 847
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/16 v10, 0x10

    if-ne v9, v10, :cond_b

    .line 851
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Lc8/PIb;->nextToken(I)V

    goto :goto_3

    .line 852
    :cond_b
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_c

    .line 855
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 860
    :cond_c
    iget-object v9, p0, Lc8/NIb;->config:Lc8/XIb;

    invoke-static {v8, v6, v9}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v7

    .line 861
    .restart local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_2

    .line 862
    .end local v2    # "derializer":Lc8/hJb;
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_d
    iget-object v9, p0, Lc8/NIb;->config:Lc8/XIb;

    invoke-virtual {v9, v6}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v2

    .line 863
    .restart local v2    # "derializer":Lc8/hJb;
    const/4 v9, 0x0

    invoke-interface {v2, p0, v6, v9}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_2

    .line 877
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "derializer":Lc8/hJb;
    .end local v4    # "isArray":Z
    .end local v6    # "type":Ljava/lang/reflect/Type;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_e
    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_f

    .line 878
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Lc8/PIb;->nextToken(I)V

    .line 804
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 880
    :cond_f
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lc8/PIb;->nextToken(I)V

    goto :goto_4

    .line 884
    :cond_10
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_11

    .line 885
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v11}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 888
    :cond_11
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lc8/PIb;->nextToken(I)V

    goto/16 :goto_0
.end method

.method public parseArrayWithType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 13
    .param p1, "collectionType"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 976
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v9, Lc8/PIb;->token:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 977
    iget-object v9, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v9}, Lc8/PIb;->nextToken()V

    .line 978
    const/4 v2, 0x0

    .line 1040
    :goto_0
    return-object v2

    :cond_0
    move-object v9, p1

    .line 981
    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 983
    .local v1, "actualTypes":[Ljava/lang/reflect/Type;
    array-length v9, v1

    if-eq v9, v12, :cond_1

    .line 984
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not support type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 987
    :cond_1
    aget-object v0, v1, v11

    .line 989
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v9, v0, Ljava/lang/Class;

    if-eqz v9, :cond_2

    .line 990
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v2, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v0, v2}, Lc8/NIb;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto :goto_0

    .line 995
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v9, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v9, :cond_5

    move-object v8, v0

    .line 996
    check-cast v8, Ljava/lang/reflect/WildcardType;

    .line 999
    .local v8, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    aget-object v7, v9, v11

    .line 1002
    .local v7, "upperBoundType":Ljava/lang/reflect/Type;
    const-class v9, Ljava/lang/Object;

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1003
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_3

    .line 1005
    invoke-virtual {p0}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1007
    :cond_3
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not support type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1011
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v7, Ljava/lang/Class;

    .end local v7    # "upperBoundType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v7, v2}, Lc8/NIb;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto :goto_0

    .line 1019
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_5
    instance-of v9, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v9, :cond_7

    move-object v6, v0

    .line 1020
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 1021
    .local v6, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1023
    .local v4, "bounds":[Ljava/lang/reflect/Type;
    array-length v9, v4

    if-eq v9, v12, :cond_6

    .line 1024
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not support : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1027
    :cond_6
    aget-object v3, v4, v11

    .line 1028
    .local v3, "boundType":Ljava/lang/reflect/Type;
    instance-of v9, v3, Ljava/lang/Class;

    if-eqz v9, :cond_7

    .line 1029
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v3, Ljava/lang/Class;

    .end local v3    # "boundType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v3, v2}, Lc8/NIb;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 1035
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "bounds":[Ljava/lang/reflect/Type;
    .end local v6    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_7
    instance-of v9, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_8

    move-object v5, v0

    .line 1036
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 1038
    .local v5, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v5, v2}, Lc8/NIb;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 1043
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_8
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TODO : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .prologue
    .line 1076
    iget-object v1, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v1, v1, Lc8/PIb;->features:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1079
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/NIb;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    return-object v1

    .line 1076
    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 647
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/NIb;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/NIb;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 656
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v4, v4, Lc8/PIb;->token:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 657
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v4}, Lc8/PIb;->nextToken()V

    .line 658
    const/4 v0, 0x0

    .line 678
    :goto_0
    return-object v0

    .line 661
    :cond_0
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v4, v4, Lc8/PIb;->token:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 662
    const-class v4, [B

    if-ne p1, v4, :cond_1

    .line 663
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v4}, Lc8/PIb;->bytesValue()[B

    move-result-object v0

    .line 664
    .local v0, "bytes":[B
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v4}, Lc8/PIb;->nextToken()V

    goto :goto_0

    .line 668
    .end local v0    # "bytes":[B
    :cond_1
    const-class v4, [C

    if-ne p1, v4, :cond_2

    .line 669
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v4}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 670
    .local v3, "strVal":Ljava/lang/String;
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v4}, Lc8/PIb;->nextToken()V

    .line 671
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 675
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lc8/NIb;->config:Lc8/XIb;

    invoke-virtual {v4, p1}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v1

    .line 678
    .local v1, "derializer":Lc8/hJb;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 679
    :catch_0
    move-exception v2

    .line 680
    .local v2, "e":Lcom/alibaba/fastjson/JSONException;
    throw v2

    .line 681
    .end local v2    # "e":Lcom/alibaba/fastjson/JSONException;
    :catch_1
    move-exception v2

    .line 682
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public parseObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/util/Map;

    .prologue
    .line 1072
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/NIb;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v24, v0

    .line 163
    .local v24, "lexer":Lc8/PIb;
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->token:I

    move/from16 v38, v0

    .line 164
    .local v38, "token":I
    const/16 v41, 0x8

    move/from16 v0, v38

    move/from16 v1, v41

    if-ne v0, v1, :cond_1

    .line 165
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->nextToken()V

    .line 166
    const/16 p1, 0x0

    .line 632
    .end local p1    # "object":Ljava/util/Map;
    :cond_0
    :goto_0
    return-object p1

    .line 169
    .restart local p1    # "object":Ljava/util/Map;
    :cond_1
    const/16 v41, 0xc

    move/from16 v0, v38

    move/from16 v1, v41

    if-eq v0, v1, :cond_2

    const/16 v41, 0x10

    move/from16 v0, v38

    move/from16 v1, v41

    if-eq v0, v1, :cond_2

    .line 170
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "syntax error, expect {, actual "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static/range {v38 .. v38}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ", "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 175
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v41, v0

    if-eqz v41, :cond_5

    move-object/from16 v22, p1

    .line 176
    check-cast v22, Lcom/alibaba/fastjson/JSONObject;

    .line 177
    .local v22, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v16

    .line 178
    .local v16, "innerMap":Ljava/util/Map;
    const/16 v19, 0x1

    .line 185
    .end local v22    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .local v19, "isJSONObject":Z
    :goto_1
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->features:I

    move/from16 v41, v0

    sget-object v42, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v42, v0

    and-int v41, v41, v42

    if-eqz v41, :cond_6

    const/4 v4, 0x1

    .line 186
    .local v4, "allowISO8601DateFormat":Z
    :goto_2
    move-object/from16 v0, v24

    iget-boolean v11, v0, Lc8/PIb;->disableCircularReferenceDetect:Z

    .line 188
    .local v11, "disableCircularReferenceDetect":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/NIb;->contex:Lc8/WIb;

    .line 190
    .local v7, "context":Lc8/WIb;
    const/16 v34, 0x0

    .line 192
    .local v34, "setContextFlag":Z
    :cond_3
    :goto_3
    :try_start_0
    move-object/from16 v0, v24

    iget-char v5, v0, Lc8/PIb;->ch:C

    .line 193
    .local v5, "ch":C
    const/16 v41, 0x22

    move/from16 v0, v41

    if-eq v5, v0, :cond_4

    const/16 v41, 0x7d

    move/from16 v0, v41

    if-eq v5, v0, :cond_4

    .line 195
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->skipWhitespace()V

    .line 196
    move-object/from16 v0, v24

    iget-char v5, v0, Lc8/PIb;->ch:C

    .line 199
    :cond_4
    :goto_4
    const/16 v41, 0x2c

    move/from16 v0, v41

    if-ne v5, v0, :cond_7

    .line 200
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->next()C

    .line 201
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->skipWhitespace()V

    .line 202
    move-object/from16 v0, v24

    iget-char v5, v0, Lc8/PIb;->ch:C

    goto :goto_4

    .line 180
    .end local v4    # "allowISO8601DateFormat":Z
    .end local v5    # "ch":C
    .end local v7    # "context":Lc8/WIb;
    .end local v11    # "disableCircularReferenceDetect":Z
    .end local v16    # "innerMap":Ljava/util/Map;
    .end local v19    # "isJSONObject":Z
    .end local v34    # "setContextFlag":Z
    :cond_5
    const/16 v19, 0x0

    .line 181
    .restart local v19    # "isJSONObject":Z
    const/16 v16, 0x0

    .restart local v16    # "innerMap":Ljava/util/Map;
    goto :goto_1

    .line 185
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 205
    .restart local v4    # "allowISO8601DateFormat":Z
    .restart local v5    # "ch":C
    .restart local v7    # "context":Lc8/WIb;
    .restart local v11    # "disableCircularReferenceDetect":Z
    .restart local v34    # "setContextFlag":Z
    :cond_7
    const/16 v20, 0x0

    .line 207
    .local v20, "isObjectKey":Z
    const/16 v41, 0x22

    move/from16 v0, v41

    if-ne v5, v0, :cond_9

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->symbolTable:Lc8/aJb;

    move-object/from16 v41, v0

    const/16 v42, 0x22

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanSymbol(Lc8/aJb;C)Ljava/lang/String;

    move-result-object v23

    .line 210
    .local v23, "key":Ljava/lang/String;
    move-object/from16 v0, v24

    iget-char v5, v0, Lc8/PIb;->ch:C

    .line 211
    const/16 v41, 0x3a

    move/from16 v0, v41

    if-eq v5, v0, :cond_60

    .line 212
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->skipWhitespace()V

    .line 213
    move-object/from16 v0, v24

    iget-char v5, v0, Lc8/PIb;->ch:C

    .line 215
    const/16 v41, 0x3a

    move/from16 v0, v41

    if-eq v5, v0, :cond_60

    .line 216
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "expect \':\' at "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->pos:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ", name "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    .end local v5    # "ch":C
    .end local v20    # "isObjectKey":Z
    .end local v23    # "key":Ljava/lang/String;
    .end local p1    # "object":Ljava/util/Map;
    :catchall_0
    move-exception v41

    if-nez v11, :cond_8

    .line 639
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/NIb;->contex:Lc8/WIb;

    :cond_8
    throw v41

    .line 219
    .restart local v5    # "ch":C
    .restart local v20    # "isObjectKey":Z
    .restart local p1    # "object":Ljava/util/Map;
    :cond_9
    const/16 v41, 0x7d

    move/from16 v0, v41

    if-ne v5, v0, :cond_b

    .line 222
    :try_start_1
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v41, v0

    add-int/lit8 v15, v41, 0x1

    move-object/from16 v0, v24

    iput v15, v0, Lc8/PIb;->bp:I

    .line 223
    .local v15, "index":I
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-lt v15, v0, :cond_a

    const/16 v41, 0x1a

    .line 225
    :goto_5
    move/from16 v0, v41

    move-object/from16 v1, v24

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 227
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v24

    iput v0, v1, Lc8/PIb;->sp:I

    .line 228
    const/16 v41, 0x10

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/PIb;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    if-nez v11, :cond_0

    .line 639
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/NIb;->contex:Lc8/WIb;

    goto/16 :goto_0

    .line 223
    :cond_a
    :try_start_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 225
    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v41

    goto :goto_5

    .line 230
    .end local v15    # "index":I
    :cond_b
    const/16 v41, 0x27

    move/from16 v0, v41

    if-ne v5, v0, :cond_d

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->symbolTable:Lc8/aJb;

    move-object/from16 v41, v0

    const/16 v42, 0x27

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanSymbol(Lc8/aJb;C)Ljava/lang/String;

    move-result-object v23

    .line 232
    .restart local v23    # "key":Ljava/lang/String;
    move-object/from16 v0, v24

    iget-char v0, v0, Lc8/PIb;->ch:C

    move/from16 v41, v0

    const/16 v42, 0x3a

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_c

    .line 233
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->skipWhitespace()V

    .line 235
    :cond_c
    move-object/from16 v0, v24

    iget-char v5, v0, Lc8/PIb;->ch:C

    .line 236
    const/16 v41, 0x3a

    move/from16 v0, v41

    if-eq v5, v0, :cond_60

    .line 237
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "expect \':\' at "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->pos:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 239
    .end local v23    # "key":Ljava/lang/String;
    :cond_d
    const/16 v41, 0x1a

    move/from16 v0, v41

    if-ne v5, v0, :cond_e

    .line 240
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "syntax error, "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 241
    :cond_e
    const/16 v41, 0x2c

    move/from16 v0, v41

    if-ne v5, v0, :cond_f

    .line 242
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "syntax error, "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 243
    :cond_f
    const/16 v41, 0x30

    move/from16 v0, v41

    if-lt v5, v0, :cond_10

    const/16 v41, 0x39

    move/from16 v0, v41

    if-le v5, v0, :cond_11

    :cond_10
    const/16 v41, 0x2d

    move/from16 v0, v41

    if-ne v5, v0, :cond_14

    .line 244
    :cond_11
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v24

    iput v0, v1, Lc8/PIb;->sp:I

    .line 245
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->scanNumber()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :try_start_3
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->token:I

    move/from16 v41, v0

    const/16 v42, 0x2

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_13

    .line 248
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->integerValue()Ljava/lang/Number;

    move-result-object v23

    .line 253
    .local v23, "key":Ljava/lang/Number;
    :goto_6
    if-eqz v19, :cond_12

    .line 254
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v23

    .line 259
    .end local v23    # "key":Ljava/lang/Number;
    :cond_12
    :try_start_4
    move-object/from16 v0, v24

    iget-char v5, v0, Lc8/PIb;->ch:C

    .line 260
    const/16 v41, 0x3a

    move/from16 v0, v41

    if-eq v5, v0, :cond_62

    .line 261
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "parse number key error, "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 250
    :cond_13
    const/16 v41, 0x1

    :try_start_5
    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/PIb;->decimalValue(Z)Ljava/lang/Number;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v23

    .restart local v23    # "key":Ljava/lang/Number;
    goto :goto_6

    .line 257
    .end local v23    # "key":Ljava/lang/Number;
    :catch_0
    move-exception v41

    :try_start_6
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "parse number key error, "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 263
    :cond_14
    const/16 v41, 0x7b

    move/from16 v0, v41

    if-eq v5, v0, :cond_15

    const/16 v41, 0x5b

    move/from16 v0, v41

    if-ne v5, v0, :cond_17

    .line 264
    :cond_15
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->nextToken()V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v23

    .line 266
    .local v23, "key":Ljava/lang/Object;
    const/16 v20, 0x1

    .line 268
    if-eqz v19, :cond_61

    .line 269
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .local v23, "key":Ljava/lang/String;
    move-object/from16 v41, v23

    .line 284
    .end local v23    # "key":Ljava/lang/String;
    :goto_7
    if-nez v20, :cond_1a

    .line 287
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v42, v0

    add-int/lit8 v15, v42, 0x1

    move-object/from16 v0, v24

    iput v15, v0, Lc8/PIb;->bp:I

    .line 288
    .restart local v15    # "index":I
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v42, v0

    move/from16 v0, v42

    if-lt v15, v0, :cond_19

    const/16 v5, 0x1a

    .line 290
    .end local v5    # "ch":C
    :goto_8
    move-object/from16 v0, v24

    iput-char v5, v0, Lc8/PIb;->ch:C

    .line 295
    .restart local v5    # "ch":C
    :goto_9
    const/16 v42, 0x20

    move/from16 v0, v42

    if-gt v5, v0, :cond_1b

    const/16 v42, 0x20

    move/from16 v0, v42

    if-eq v5, v0, :cond_16

    const/16 v42, 0xa

    move/from16 v0, v42

    if-eq v5, v0, :cond_16

    const/16 v42, 0xd

    move/from16 v0, v42

    if-eq v5, v0, :cond_16

    const/16 v42, 0x9

    move/from16 v0, v42

    if-eq v5, v0, :cond_16

    const/16 v42, 0xc

    move/from16 v0, v42

    if-eq v5, v0, :cond_16

    const/16 v42, 0x8

    move/from16 v0, v42

    if-ne v5, v0, :cond_1b

    .line 303
    :cond_16
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->next()C

    .line 304
    move-object/from16 v0, v24

    iget-char v5, v0, Lc8/PIb;->ch:C

    goto :goto_9

    .line 272
    .end local v15    # "index":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->symbolTable:Lc8/aJb;

    move-object/from16 v41, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/PIb;->scanSymbolUnQuoted(Lc8/aJb;)Ljava/lang/String;

    move-result-object v23

    .line 273
    .restart local v23    # "key":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->skipWhitespace()V

    .line 274
    move-object/from16 v0, v24

    iget-char v5, v0, Lc8/PIb;->ch:C

    .line 275
    const/16 v41, 0x3a

    move/from16 v0, v41

    if-eq v5, v0, :cond_18

    .line 276
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "expect \':\' at "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ", actual "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 279
    :cond_18
    if-eqz v19, :cond_60

    .line 280
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v41, v23

    goto/16 :goto_7

    .line 288
    .end local v23    # "key":Ljava/lang/String;
    .restart local v15    # "index":I
    :cond_19
    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 290
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto/16 :goto_8

    .line 310
    .end local v15    # "index":I
    :cond_1a
    move-object/from16 v0, v24

    iget-char v5, v0, Lc8/PIb;->ch:C

    .line 313
    :cond_1b
    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v24

    iput v0, v1, Lc8/PIb;->sp:I

    .line 315
    const-string/jumbo v42, "@type"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_26

    sget-object v42, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 316
    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lc8/PIb;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v42

    if-nez v42, :cond_26

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->symbolTable:Lc8/aJb;

    move-object/from16 v41, v0

    const/16 v42, 0x22

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanSymbol(Lc8/aJb;C)Ljava/lang/String;

    move-result-object v39

    .line 318
    .local v39, "typeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->config:Lc8/XIb;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/XIb;->defaultClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lc8/RJb;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 320
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v6, :cond_1c

    .line 321
    const-string/jumbo v41, "@type"

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 325
    :cond_1c
    const/16 v41, 0x10

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/PIb;->nextToken(I)V

    .line 326
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->token:I

    move/from16 v41, v0

    const/16 v42, 0xd

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_22

    .line 327
    const/16 v41, 0x10

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/PIb;->nextToken(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 329
    const/16 v18, 0x0

    .line 330
    .local v18, "instance":Ljava/lang/Object;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->config:Lc8/XIb;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v10

    .line 331
    .local v10, "deserializer":Lc8/hJb;
    instance-of v0, v10, Lc8/RIb;

    move/from16 v41, v0

    if-eqz v41, :cond_1d

    .line 332
    check-cast v10, Lc8/RIb;

    .end local v10    # "deserializer":Lc8/hJb;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v6}, Lc8/RIb;->createInstance(Lc8/NIb;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v18

    .line 335
    .end local v18    # "instance":Ljava/lang/Object;
    :cond_1d
    if-nez v18, :cond_1e

    .line 336
    const-class v41, Ljava/lang/Cloneable;

    move-object/from16 v0, v41

    if-ne v6, v0, :cond_20

    .line 337
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 638
    :cond_1e
    :goto_a
    if-nez v11, :cond_1f

    .line 639
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/NIb;->contex:Lc8/WIb;

    :cond_1f
    move-object/from16 p1, v18

    .line 345
    goto/16 :goto_0

    .line 338
    :cond_20
    :try_start_8
    const-string/jumbo v41, "java.util.Collections$EmptyMap"

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_21

    .line 339
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v18

    .local v18, "instance":Ljava/util/Map;
    goto :goto_a

    .line 341
    .end local v18    # "instance":Ljava/util/Map;
    :cond_21
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v18

    .local v18, "instance":Ljava/lang/Object;
    goto :goto_a

    .line 346
    .end local v18    # "instance":Ljava/lang/Object;
    :catch_1
    move-exception v12

    .line 347
    .local v12, "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v42, "create instance error"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v41

    .line 351
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_22
    const/16 v41, 0x2

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lc8/NIb;->resolveStatus:I

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->contex:Lc8/WIb;

    move-object/from16 v41, v0

    if-eqz v41, :cond_23

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v41, v0

    if-nez v41, :cond_23

    .line 354
    invoke-virtual/range {p0 .. p0}, Lc8/NIb;->popContext()V

    .line 357
    :cond_23
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v41

    if-lez v41, :cond_25

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->config:Lc8/XIb;

    move-object/from16 v41, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-static {v0, v6, v1}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/Class;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v26

    .line 359
    .local v26, "newObj":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lc8/NIb;->parseObject(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 638
    if-nez v11, :cond_24

    .line 639
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/NIb;->contex:Lc8/WIb;

    :cond_24
    move-object/from16 p1, v26

    .line 360
    goto/16 :goto_0

    .line 363
    .end local v26    # "newObj":Ljava/lang/Object;
    :cond_25
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->config:Lc8/XIb;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v10

    .line 364
    .restart local v10    # "deserializer":Lc8/hJb;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v10, v0, v6, v1}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object p1

    .line 638
    .end local p1    # "object":Ljava/util/Map;
    if-nez v11, :cond_0

    .line 639
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/NIb;->contex:Lc8/WIb;

    goto/16 :goto_0

    .line 367
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "deserializer":Lc8/hJb;
    .end local v39    # "typeName":Ljava/lang/String;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_26
    :try_start_b
    const-string/jumbo v42, "$ref"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_32

    if-eqz v7, :cond_32

    sget-object v42, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 369
    move-object/from16 v0, v24

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lc8/PIb;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v42

    if-nez v42, :cond_32

    .line 371
    const/16 v41, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/PIb;->nextToken(I)V

    .line 372
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->token:I

    move/from16 v41, v0

    const/16 v42, 0x4

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_31

    .line 373
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v30

    .line 374
    .local v30, "ref":Ljava/lang/String;
    const/16 v41, 0xd

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/PIb;->nextToken(I)V

    .line 376
    const/16 v31, 0x0

    .line 377
    .local v31, "refValue":Ljava/lang/Object;
    const-string/jumbo v41, "@"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2a

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->contex:Lc8/WIb;

    move-object/from16 v36, v0

    .line 379
    .local v36, "thisContext":Lc8/WIb;
    move-object/from16 v0, v36

    iget-object v0, v0, Lc8/WIb;->object:Ljava/lang/Object;

    move-object/from16 v37, v0

    .line 380
    .local v37, "thisObj":Ljava/lang/Object;
    move-object/from16 v0, v37

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v41, v0

    if-nez v41, :cond_27

    move-object/from16 v0, v37

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v41, v0

    if-eqz v41, :cond_28

    .line 381
    :cond_27
    move-object/from16 v31, v37

    move-object/from16 p1, v31

    .line 409
    .end local v31    # "refValue":Ljava/lang/Object;
    .end local v36    # "thisContext":Lc8/WIb;
    .end local v37    # "thisObj":Ljava/lang/Object;
    .end local p1    # "object":Ljava/util/Map;
    :goto_b
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->token:I

    move/from16 v41, v0

    const/16 v42, 0xd

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_30

    .line 410
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "syntax error, "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 382
    .restart local v31    # "refValue":Ljava/lang/Object;
    .restart local v36    # "thisContext":Lc8/WIb;
    .restart local v37    # "thisObj":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_28
    move-object/from16 v0, v36

    iget-object v0, v0, Lc8/WIb;->parent:Lc8/WIb;

    move-object/from16 v41, v0

    if-eqz v41, :cond_29

    .line 383
    move-object/from16 v0, v36

    iget-object v0, v0, Lc8/WIb;->parent:Lc8/WIb;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lc8/WIb;->object:Ljava/lang/Object;

    move-object/from16 v31, v0

    .end local v31    # "refValue":Ljava/lang/Object;
    :cond_29
    move-object/from16 p1, v31

    .line 385
    goto :goto_b

    .end local v36    # "thisContext":Lc8/WIb;
    .end local v37    # "thisObj":Ljava/lang/Object;
    .restart local v31    # "refValue":Ljava/lang/Object;
    :cond_2a
    const-string/jumbo v41, ".."

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2c

    .line 386
    iget-object v0, v7, Lc8/WIb;->object:Ljava/lang/Object;

    move-object/from16 v41, v0

    if-eqz v41, :cond_2b

    .line 387
    iget-object v0, v7, Lc8/WIb;->object:Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 p1, v31

    goto :goto_b

    .line 389
    :cond_2b
    new-instance v41, Lc8/MIb;

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-direct {v0, v7, v1}, Lc8/MIb;-><init>(Lc8/WIb;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/NIb;->addResolveTask(Lc8/MIb;)V

    .line 390
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lc8/NIb;->resolveStatus:I

    move-object/from16 p1, v31

    goto :goto_b

    .line 392
    :cond_2c
    const-string/jumbo v41, "$"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2f

    .line 393
    move-object/from16 v33, v7

    .line 394
    .local v33, "rootContext":Lc8/WIb;
    :goto_c
    move-object/from16 v0, v33

    iget-object v0, v0, Lc8/WIb;->parent:Lc8/WIb;

    move-object/from16 v41, v0

    if-eqz v41, :cond_2d

    .line 395
    move-object/from16 v0, v33

    iget-object v0, v0, Lc8/WIb;->parent:Lc8/WIb;

    move-object/from16 v33, v0

    goto :goto_c

    .line 398
    :cond_2d
    move-object/from16 v0, v33

    iget-object v0, v0, Lc8/WIb;->object:Ljava/lang/Object;

    move-object/from16 v41, v0

    if-eqz v41, :cond_2e

    .line 399
    move-object/from16 v0, v33

    iget-object v0, v0, Lc8/WIb;->object:Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 p1, v31

    goto/16 :goto_b

    .line 401
    :cond_2e
    new-instance v41, Lc8/MIb;

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lc8/MIb;-><init>(Lc8/WIb;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/NIb;->addResolveTask(Lc8/MIb;)V

    .line 402
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lc8/NIb;->resolveStatus:I

    move-object/from16 p1, v31

    .line 404
    goto/16 :goto_b

    .line 405
    .end local v33    # "rootContext":Lc8/WIb;
    :cond_2f
    new-instance v41, Lc8/MIb;

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-direct {v0, v7, v1}, Lc8/MIb;-><init>(Lc8/WIb;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/NIb;->addResolveTask(Lc8/MIb;)V

    .line 406
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lc8/NIb;->resolveStatus:I

    move-object/from16 p1, v31

    goto/16 :goto_b

    .line 412
    .end local v31    # "refValue":Ljava/lang/Object;
    .end local p1    # "object":Ljava/util/Map;
    :cond_30
    const/16 v41, 0x10

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/PIb;->nextToken(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 638
    if-nez v11, :cond_0

    .line 639
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/NIb;->contex:Lc8/WIb;

    goto/16 :goto_0

    .line 416
    .end local v30    # "ref":Ljava/lang/String;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_31
    :try_start_c
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "illegal ref, "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->token:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 420
    :cond_32
    if-nez v11, :cond_34

    if-nez v34, :cond_34

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->contex:Lc8/WIb;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lc8/NIb;->setContext(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)Lc8/WIb;

    move-result-object v8

    .line 423
    .local v8, "contextR":Lc8/WIb;
    if-nez v7, :cond_33

    .line 424
    move-object v7, v8

    .line 426
    :cond_33
    const/16 v34, 0x1

    .line 430
    .end local v8    # "contextR":Lc8/WIb;
    :cond_34
    const/16 v42, 0x22

    move/from16 v0, v42

    if-ne v5, v0, :cond_3a

    .line 431
    const/16 v42, 0x22

    move-object/from16 v0, v24

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lc8/PIb;->scanStringValue(C)Ljava/lang/String;

    move-result-object v35

    .line 432
    .local v35, "strValue":Ljava/lang/String;
    move-object/from16 v40, v35

    .line 434
    .local v40, "value":Ljava/lang/String;
    if-eqz v4, :cond_36

    .line 435
    new-instance v21, Lc8/PIb;

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lc8/PIb;-><init>(Ljava/lang/String;)V

    .line 436
    .local v21, "iso8601Lexer":Lc8/PIb;
    const/16 v42, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lc8/PIb;->scanISO8601DateIfMatch(Z)Z

    move-result v42

    if-eqz v42, :cond_35

    .line 437
    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/PIb;->calendar:Ljava/util/Calendar;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v40

    .line 439
    .end local v40    # "value":Ljava/lang/String;
    :cond_35
    invoke-virtual/range {v21 .. v21}, Lc8/PIb;->close()V

    .line 442
    .end local v21    # "iso8601Lexer":Lc8/PIb;
    :cond_36
    if-eqz v16, :cond_39

    .line 443
    move-object/from16 v0, v16

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .end local v35    # "strValue":Ljava/lang/String;
    :cond_37
    :goto_d
    move-object/from16 v0, v24

    iget-char v5, v0, Lc8/PIb;->ch:C

    .line 582
    const/16 v41, 0x2c

    move/from16 v0, v41

    if-eq v5, v0, :cond_38

    const/16 v41, 0x7d

    move/from16 v0, v41

    if-eq v5, v0, :cond_38

    .line 583
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->skipWhitespace()V

    .line 584
    move-object/from16 v0, v24

    iget-char v5, v0, Lc8/PIb;->ch:C

    .line 587
    :cond_38
    const/16 v41, 0x2c

    move/from16 v0, v41

    if-ne v5, v0, :cond_56

    .line 590
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v41, v0

    add-int/lit8 v15, v41, 0x1

    move-object/from16 v0, v24

    iput v15, v0, Lc8/PIb;->bp:I

    .line 591
    .restart local v15    # "index":I
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-lt v15, v0, :cond_55

    const/16 v41, 0x1a

    .line 593
    :goto_e
    move/from16 v0, v41

    move-object/from16 v1, v24

    iput-char v0, v1, Lc8/PIb;->ch:C

    goto/16 :goto_3

    .line 445
    .end local v15    # "index":I
    .restart local v35    # "strValue":Ljava/lang/String;
    :cond_39
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 447
    .end local v35    # "strValue":Ljava/lang/String;
    :cond_3a
    const/16 v42, 0x30

    move/from16 v0, v42

    if-lt v5, v0, :cond_3b

    const/16 v42, 0x39

    move/from16 v0, v42

    if-le v5, v0, :cond_3c

    :cond_3b
    const/16 v42, 0x2d

    move/from16 v0, v42

    if-ne v5, v0, :cond_3d

    .line 448
    :cond_3c
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->scanNumberValue()Ljava/lang/Number;

    move-result-object v40

    .line 449
    .local v40, "value":Ljava/lang/Number;
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 450
    .end local v40    # "value":Ljava/lang/Number;
    :cond_3d
    const/16 v42, 0x5b

    move/from16 v0, v42

    if-ne v5, v0, :cond_43

    .line 451
    const/16 v42, 0xe

    move/from16 v0, v42

    move-object/from16 v1, v24

    iput v0, v1, Lc8/PIb;->token:I

    .line 454
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v42, v0

    add-int/lit8 v15, v42, 0x1

    move-object/from16 v0, v24

    iput v15, v0, Lc8/PIb;->bp:I

    .line 455
    .restart local v15    # "index":I
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v42, v0

    move/from16 v0, v42

    if-lt v15, v0, :cond_3f

    const/16 v42, 0x1a

    .line 457
    :goto_f
    move/from16 v0, v42

    move-object/from16 v1, v24

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 459
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v25, "list":Ljava/util/ArrayList;
    if-eqz p2, :cond_40

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    const-class v43, Ljava/lang/Integer;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_40

    const/16 v29, 0x1

    .line 462
    .local v29, "parentIsArray":Z
    :goto_10
    if-nez v29, :cond_3e

    .line 463
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lc8/NIb;->setContext(Lc8/WIb;)V

    .line 466
    :cond_3e
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lc8/NIb;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 467
    new-instance v40, Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    .line 468
    .local v40, "value":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v16, :cond_41

    .line 469
    move-object/from16 v0, v16

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :goto_11
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->token:I

    move/from16 v38, v0

    .line 475
    const/16 v41, 0xd

    move/from16 v0, v38

    move/from16 v1, v41

    if-ne v0, v1, :cond_42

    .line 476
    const/16 v41, 0x10

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/PIb;->nextToken(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 638
    if-nez v11, :cond_0

    .line 639
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/NIb;->contex:Lc8/WIb;

    goto/16 :goto_0

    .line 455
    .end local v25    # "list":Ljava/util/ArrayList;
    .end local v29    # "parentIsArray":Z
    .end local v40    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_3f
    :try_start_d
    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 457
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v42

    goto :goto_f

    .line 461
    .restart local v25    # "list":Ljava/util/ArrayList;
    :cond_40
    const/16 v29, 0x0

    goto :goto_10

    .line 471
    .restart local v29    # "parentIsArray":Z
    .restart local v40    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_41
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 478
    :cond_42
    const/16 v41, 0x10

    move/from16 v0, v38

    move/from16 v1, v41

    if-eq v0, v1, :cond_3

    .line 481
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "syntax error, "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 483
    .end local v15    # "index":I
    .end local v25    # "list":Ljava/util/ArrayList;
    .end local v29    # "parentIsArray":Z
    .end local v40    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_43
    const/16 v42, 0x7b

    move/from16 v0, v42

    if-ne v5, v0, :cond_50

    .line 485
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v42, v0

    add-int/lit8 v15, v42, 0x1

    move-object/from16 v0, v24

    iput v15, v0, Lc8/PIb;->bp:I

    .line 486
    .restart local v15    # "index":I
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v42, v0

    move/from16 v0, v42

    if-lt v15, v0, :cond_4b

    const/16 v42, 0x1a

    .line 488
    :goto_12
    move/from16 v0, v42

    move-object/from16 v1, v24

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 489
    const/16 v42, 0xc

    move/from16 v0, v42

    move-object/from16 v1, v24

    iput v0, v1, Lc8/PIb;->token:I

    .line 492
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v29, v0

    .line 494
    .restart local v29    # "parentIsArray":Z
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->features:I

    move/from16 v42, v0

    sget-object v43, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v43

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v43, v0

    and-int v42, v42, v43

    if-eqz v42, :cond_4c

    new-instance v17, Lcom/alibaba/fastjson/JSONObject;

    new-instance v42, Ljava/util/LinkedHashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 498
    .local v17, "input":Lcom/alibaba/fastjson/JSONObject;
    :goto_13
    const/4 v9, 0x0

    .line 500
    .local v9, "ctxLocal":Lc8/WIb;
    if-nez v11, :cond_44

    if-nez v29, :cond_44

    .line 502
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v41

    invoke-virtual {v0, v7, v1, v2}, Lc8/NIb;->setContext(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)Lc8/WIb;

    move-result-object v9

    .line 505
    :cond_44
    const/16 v27, 0x0

    .line 506
    .local v27, "obj":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 507
    .local v28, "objParsed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->fieldTypeResolver:Lc8/gJb;

    move-object/from16 v42, v0

    if-eqz v42, :cond_45

    .line 508
    if-eqz v41, :cond_4d

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    .line 509
    .local v32, "resolveFieldName":Ljava/lang/String;
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->fieldTypeResolver:Lc8/gJb;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lc8/gJb;->resolve(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v14

    .line 510
    .local v14, "fieldType":Ljava/lang/reflect/Type;
    if-eqz v14, :cond_45

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->config:Lc8/XIb;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v13

    .line 512
    .local v13, "fieldDeser":Lc8/hJb;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-interface {v13, v0, v14, v1}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .line 513
    const/16 v28, 0x1

    .line 516
    .end local v13    # "fieldDeser":Lc8/hJb;
    .end local v14    # "fieldType":Ljava/lang/reflect/Type;
    .end local v27    # "obj":Ljava/lang/Object;
    .end local v32    # "resolveFieldName":Ljava/lang/String;
    :cond_45
    if-nez v28, :cond_46

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lc8/NIb;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .line 519
    :cond_46
    if-eqz v9, :cond_47

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_47

    .line 520
    move-object/from16 v0, p1

    iput-object v0, v9, Lc8/WIb;->object:Ljava/lang/Object;

    .line 523
    :cond_47
    move-object/from16 v0, p0

    iget v0, v0, Lc8/NIb;->resolveStatus:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_48

    .line 524
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lc8/NIb;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 527
    :cond_48
    if-eqz v16, :cond_4e

    .line 528
    move-object/from16 v0, v16

    move-object/from16 v1, v41

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :goto_15
    if-eqz v29, :cond_49

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v41

    invoke-virtual {v0, v7, v1, v2}, Lc8/NIb;->setContext(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)Lc8/WIb;

    .line 537
    :cond_49
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->token:I

    move/from16 v38, v0

    .line 538
    const/16 v41, 0xd

    move/from16 v0, v38

    move/from16 v1, v41

    if-ne v0, v1, :cond_4f

    .line 539
    const/16 v41, 0x10

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/PIb;->nextToken(I)V

    .line 541
    if-nez v11, :cond_4a

    .line 542
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/NIb;->contex:Lc8/WIb;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 638
    :cond_4a
    if-nez v11, :cond_0

    .line 639
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/NIb;->contex:Lc8/WIb;

    goto/16 :goto_0

    .line 486
    .end local v9    # "ctxLocal":Lc8/WIb;
    .end local v17    # "input":Lcom/alibaba/fastjson/JSONObject;
    .end local v28    # "objParsed":Z
    .end local v29    # "parentIsArray":Z
    :cond_4b
    :try_start_e
    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 488
    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v42

    goto/16 :goto_12

    .line 494
    .restart local v29    # "parentIsArray":Z
    :cond_4c
    new-instance v17, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v17 .. v17}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto/16 :goto_13

    .line 508
    .restart local v9    # "ctxLocal":Lc8/WIb;
    .restart local v17    # "input":Lcom/alibaba/fastjson/JSONObject;
    .restart local v27    # "obj":Ljava/lang/Object;
    .restart local v28    # "objParsed":Z
    :cond_4d
    const/16 v32, 0x0

    goto/16 :goto_14

    .line 530
    .end local v27    # "obj":Ljava/lang/Object;
    :cond_4e
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 545
    :cond_4f
    const/16 v41, 0x10

    move/from16 v0, v38

    move/from16 v1, v41

    if-eq v0, v1, :cond_3

    .line 548
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "syntax error, "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 550
    .end local v9    # "ctxLocal":Lc8/WIb;
    .end local v15    # "index":I
    .end local v17    # "input":Lcom/alibaba/fastjson/JSONObject;
    .end local v28    # "objParsed":Z
    .end local v29    # "parentIsArray":Z
    :cond_50
    const/16 v42, 0x74

    move/from16 v0, v42

    if-ne v5, v0, :cond_51

    .line 551
    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v42, v0

    const-string/jumbo v43, "true"

    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v44, v0

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v42

    if-eqz v42, :cond_37

    .line 552
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, 0x3

    move/from16 v0, v42

    move-object/from16 v1, v24

    iput v0, v1, Lc8/PIb;->bp:I

    .line 553
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->next()C

    .line 554
    sget-object v42, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 556
    :cond_51
    const/16 v42, 0x66

    move/from16 v0, v42

    if-ne v5, v0, :cond_52

    .line 557
    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v42, v0

    const-string/jumbo v43, "false"

    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v44, v0

    invoke-virtual/range {v42 .. v44}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v42

    if-eqz v42, :cond_37

    .line 558
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, 0x4

    move/from16 v0, v42

    move-object/from16 v1, v24

    iput v0, v1, Lc8/PIb;->bp:I

    .line 559
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->next()C

    .line 560
    sget-object v42, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 563
    :cond_52
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->nextToken()V

    .line 564
    invoke-virtual/range {p0 .. p0}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v40

    .line 566
    .local v40, "value":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v42

    const-class v43, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_53

    .line 567
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    .line 566
    :cond_53
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->token:I

    move/from16 v41, v0

    const/16 v42, 0xd

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_54

    .line 572
    const/16 v41, 0x10

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/PIb;->nextToken(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 638
    if-nez v11, :cond_0

    .line 639
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/NIb;->contex:Lc8/WIb;

    goto/16 :goto_0

    .line 574
    :cond_54
    :try_start_f
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->token:I

    move/from16 v41, v0

    const/16 v42, 0x10

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_3

    .line 577
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "syntax error, "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 591
    .end local v40    # "value":Ljava/lang/Object;
    .restart local v15    # "index":I
    :cond_55
    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 593
    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v41

    goto/16 :goto_e

    .line 596
    .end local v15    # "index":I
    :cond_56
    const/16 v41, 0x7d

    move/from16 v0, v41

    if-ne v5, v0, :cond_5f

    .line 599
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v41, v0

    add-int/lit8 v15, v41, 0x1

    move-object/from16 v0, v24

    iput v15, v0, Lc8/PIb;->bp:I

    .line 600
    .restart local v15    # "index":I
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-lt v15, v0, :cond_58

    const/16 v5, 0x1a

    .line 602
    .end local v5    # "ch":C
    :goto_16
    move-object/from16 v0, v24

    iput-char v5, v0, Lc8/PIb;->ch:C

    .line 604
    .restart local v5    # "ch":C
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v24

    iput v0, v1, Lc8/PIb;->sp:I

    .line 606
    const/16 v41, 0x2c

    move/from16 v0, v41

    if-ne v5, v0, :cond_5a

    .line 607
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v41, v0

    add-int/lit8 v15, v41, 0x1

    move-object/from16 v0, v24

    iput v15, v0, Lc8/PIb;->bp:I

    .line 608
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-lt v15, v0, :cond_59

    const/16 v41, 0x1a

    .line 610
    :goto_17
    move/from16 v0, v41

    move-object/from16 v1, v24

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 611
    const/16 v41, 0x10

    move/from16 v0, v41

    move-object/from16 v1, v24

    iput v0, v1, Lc8/PIb;->token:I

    .line 628
    :goto_18
    if-nez v11, :cond_57

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/NIb;->contex:Lc8/WIb;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lc8/NIb;->setContext(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)Lc8/WIb;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 638
    :cond_57
    if-nez v11, :cond_0

    .line 639
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/NIb;->contex:Lc8/WIb;

    goto/16 :goto_0

    .line 600
    :cond_58
    :try_start_10
    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 602
    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_16

    .line 608
    :cond_59
    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 610
    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v41

    goto :goto_17

    .line 612
    :cond_5a
    const/16 v41, 0x7d

    move/from16 v0, v41

    if-ne v5, v0, :cond_5c

    .line 613
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v41, v0

    add-int/lit8 v15, v41, 0x1

    move-object/from16 v0, v24

    iput v15, v0, Lc8/PIb;->bp:I

    .line 614
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-lt v15, v0, :cond_5b

    const/16 v41, 0x1a

    .line 616
    :goto_19
    move/from16 v0, v41

    move-object/from16 v1, v24

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 617
    const/16 v41, 0xd

    move/from16 v0, v41

    move-object/from16 v1, v24

    iput v0, v1, Lc8/PIb;->token:I

    goto :goto_18

    .line 614
    :cond_5b
    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 616
    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v41

    goto :goto_19

    .line 618
    :cond_5c
    const/16 v41, 0x5d

    move/from16 v0, v41

    if-ne v5, v0, :cond_5e

    .line 619
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->bp:I

    move/from16 v41, v0

    add-int/lit8 v15, v41, 0x1

    move-object/from16 v0, v24

    iput v15, v0, Lc8/PIb;->bp:I

    .line 620
    move-object/from16 v0, v24

    iget v0, v0, Lc8/PIb;->len:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-lt v15, v0, :cond_5d

    const/16 v41, 0x1a

    .line 622
    :goto_1a
    move/from16 v0, v41

    move-object/from16 v1, v24

    iput-char v0, v1, Lc8/PIb;->ch:C

    .line 623
    const/16 v41, 0xf

    move/from16 v0, v41

    move-object/from16 v1, v24

    iput v0, v1, Lc8/PIb;->token:I

    goto/16 :goto_18

    .line 620
    :cond_5d
    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 622
    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v41

    goto :goto_1a

    .line 625
    :cond_5e
    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->nextToken()V

    goto/16 :goto_18

    .line 634
    .end local v15    # "index":I
    :cond_5f
    new-instance v41, Lcom/alibaba/fastjson/JSONException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "syntax error, "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v24 .. v24}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v41
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .restart local v23    # "key":Ljava/lang/String;
    :cond_60
    move-object/from16 v41, v23

    goto/16 :goto_7

    .local v23, "key":Ljava/lang/Object;
    :cond_61
    move-object/from16 v41, v23

    goto/16 :goto_7

    .end local v23    # "key":Ljava/lang/Object;
    :cond_62
    move-object/from16 v41, v23

    goto/16 :goto_7
.end method

.method public parseObject(Ljava/lang/Object;)V
    .locals 13
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 895
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 896
    .local v0, "beanDeser":Lc8/RIb;
    iget-object v10, p0, Lc8/NIb;->config:Lc8/XIb;

    invoke-virtual {v10, v1}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v2

    .line 897
    .local v2, "deserizer":Lc8/hJb;
    instance-of v10, v2, Lc8/RIb;

    if-eqz v10, :cond_0

    move-object v0, v2

    .line 898
    check-cast v0, Lc8/RIb;

    .line 903
    :cond_0
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v9, v10, Lc8/PIb;->token:I

    .line 904
    .local v9, "token":I
    const/16 v10, 0xc

    if-eq v9, v10, :cond_1

    const/16 v10, 0x10

    if-eq v9, v10, :cond_1

    .line 905
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "syntax error, expect {, actual "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 910
    :cond_1
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v11, p0, Lc8/NIb;->symbolTable:Lc8/aJb;

    invoke-virtual {v10, v11}, Lc8/PIb;->scanSymbol(Lc8/aJb;)Ljava/lang/String;

    move-result-object v8

    .line 912
    .local v8, "key":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 913
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v10, v10, Lc8/PIb;->token:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_2

    .line 914
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lc8/PIb;->nextToken(I)V

    .line 970
    :goto_0
    return-void

    .line 917
    :cond_2
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v10, v10, Lc8/PIb;->token:I

    const/16 v11, 0x10

    if-eq v10, v11, :cond_1

    .line 922
    :cond_3
    const/4 v4, 0x0

    .line 923
    .local v4, "fieldDeser":Lc8/fJb;
    if-eqz v0, :cond_4

    .line 924
    invoke-virtual {v0, v8}, Lc8/RIb;->getFieldDeserializer(Ljava/lang/String;)Lc8/fJb;

    move-result-object v4

    .line 927
    :cond_4
    if-nez v4, :cond_6

    .line 928
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v10, v10, Lc8/PIb;->features:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v11

    if-nez v10, :cond_5

    .line 929
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setter not found, class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 932
    :cond_5
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lc8/PIb;->nextTokenWithChar(C)V

    .line 933
    invoke-virtual {p0}, Lc8/NIb;->parse()Ljava/lang/Object;

    .line 935
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v10, v10, Lc8/PIb;->token:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1

    .line 936
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v10}, Lc8/PIb;->nextToken()V

    goto :goto_0

    .line 942
    :cond_6
    iget-object v10, v4, Lc8/fJb;->fieldInfo:Lc8/NJb;

    iget-object v3, v10, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    .line 943
    .local v3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, v4, Lc8/fJb;->fieldInfo:Lc8/NJb;

    iget-object v5, v10, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    .line 945
    .local v5, "fieldType":Ljava/lang/reflect/Type;
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v10, :cond_7

    .line 946
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lc8/PIb;->nextTokenWithChar(C)V

    .line 947
    sget-object v10, Lc8/uJb;->instance:Lc8/uJb;

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v5, v11}, Lc8/uJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 961
    :goto_1
    invoke-virtual {v4, p1, v6}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 964
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v10, v10, Lc8/PIb;->token:I

    const/16 v11, 0x10

    if-eq v10, v11, :cond_1

    .line 968
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v10, v10, Lc8/PIb;->token:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1

    .line 969
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lc8/PIb;->nextToken(I)V

    goto/16 :goto_0

    .line 948
    :cond_7
    const-class v10, Ljava/lang/String;

    if-ne v3, v10, :cond_8

    .line 949
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lc8/PIb;->nextTokenWithChar(C)V

    .line 950
    invoke-virtual {p0}, Lc8/NIb;->parseString()Ljava/lang/String;

    move-result-object v6

    .local v6, "fieldValue":Ljava/lang/String;
    goto :goto_1

    .line 951
    .end local v6    # "fieldValue":Ljava/lang/String;
    :cond_8
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v10, :cond_9

    .line 952
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lc8/PIb;->nextTokenWithChar(C)V

    .line 953
    sget-object v10, Lc8/uJb;->instance:Lc8/uJb;

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v5, v11}, Lc8/uJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "fieldValue":Ljava/lang/Object;
    goto :goto_1

    .line 955
    .end local v6    # "fieldValue":Ljava/lang/Object;
    :cond_9
    iget-object v10, p0, Lc8/NIb;->config:Lc8/XIb;

    invoke-virtual {v10, v3, v5}, Lc8/XIb;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v7

    .line 957
    .local v7, "fieldValueDeserializer":Lc8/hJb;
    iget-object v10, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lc8/PIb;->nextTokenWithChar(C)V

    .line 958
    const/4 v10, 0x0

    invoke-interface {v7, p0, v5, v10}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "fieldValue":Ljava/lang/Object;
    goto :goto_1
.end method

.method public parseString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v4, 0x1a

    .line 1496
    iget-object v5, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v1, v5, Lc8/PIb;->token:I

    .line 1497
    .local v1, "token":I
    const/4 v5, 0x4

    if-ne v1, v5, :cond_6

    .line 1498
    iget-object v5, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v5}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 1499
    .local v2, "val":Ljava/lang/String;
    iget-object v5, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-char v5, v5, Lc8/PIb;->ch:C

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_1

    .line 1500
    iget-object v5, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v6, v5, Lc8/PIb;->bp:I

    add-int/lit8 v0, v6, 0x1

    iput v0, v5, Lc8/PIb;->bp:I

    .line 1501
    .local v0, "index":I
    iget-object v5, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v6, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v6, v6, Lc8/PIb;->len:I

    if-lt v0, v6, :cond_0

    .line 1503
    :goto_0
    iput-char v4, v5, Lc8/PIb;->ch:C

    .line 1504
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iput v7, v4, Lc8/PIb;->token:I

    .line 1535
    .end local v0    # "index":I
    .end local v2    # "val":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 1501
    .restart local v0    # "index":I
    .restart local v2    # "val":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v4, v4, Lc8/PIb;->text:Ljava/lang/String;

    .line 1503
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    .line 1505
    .end local v0    # "index":I
    :cond_1
    iget-object v5, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-char v5, v5, Lc8/PIb;->ch:C

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_3

    .line 1506
    iget-object v5, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v6, v5, Lc8/PIb;->bp:I

    add-int/lit8 v0, v6, 0x1

    iput v0, v5, Lc8/PIb;->bp:I

    .line 1507
    .restart local v0    # "index":I
    iget-object v5, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v6, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v6, v6, Lc8/PIb;->len:I

    if-lt v0, v6, :cond_2

    .line 1509
    :goto_2
    iput-char v4, v5, Lc8/PIb;->ch:C

    .line 1510
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v5, 0xf

    iput v5, v4, Lc8/PIb;->token:I

    goto :goto_1

    .line 1507
    :cond_2
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v4, v4, Lc8/PIb;->text:Ljava/lang/String;

    .line 1509
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_2

    .line 1511
    .end local v0    # "index":I
    :cond_3
    iget-object v5, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-char v5, v5, Lc8/PIb;->ch:C

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_5

    .line 1512
    iget-object v5, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v6, v5, Lc8/PIb;->bp:I

    add-int/lit8 v0, v6, 0x1

    iput v0, v5, Lc8/PIb;->bp:I

    .line 1513
    .restart local v0    # "index":I
    iget-object v5, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v6, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v6, v6, Lc8/PIb;->len:I

    if-lt v0, v6, :cond_4

    .line 1515
    :goto_3
    iput-char v4, v5, Lc8/PIb;->ch:C

    .line 1516
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v5, 0xd

    iput v5, v4, Lc8/PIb;->token:I

    goto :goto_1

    .line 1513
    :cond_4
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v4, v4, Lc8/PIb;->text:Ljava/lang/String;

    .line 1515
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    .line 1518
    .end local v0    # "index":I
    :cond_5
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v4}, Lc8/PIb;->nextToken()V

    goto :goto_1

    .line 1523
    .end local v2    # "val":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 1524
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v4}, Lc8/PIb;->numberString()Ljava/lang/String;

    move-result-object v2

    .line 1525
    .restart local v2    # "val":Ljava/lang/String;
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v4, v7}, Lc8/PIb;->nextToken(I)V

    goto :goto_1

    .line 1529
    .end local v2    # "val":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 1531
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_8

    .line 1532
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1535
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method protected popContext()V
    .locals 3

    .prologue
    .line 1327
    iget-object v0, p0, Lc8/NIb;->contex:Lc8/WIb;

    iget-object v0, v0, Lc8/WIb;->parent:Lc8/WIb;

    iput-object v0, p0, Lc8/NIb;->contex:Lc8/WIb;

    .line 1328
    iget-object v0, p0, Lc8/NIb;->contextArray:[Lc8/WIb;

    iget v1, p0, Lc8/NIb;->contextArrayIndex:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1329
    iget v0, p0, Lc8/NIb;->contextArrayIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/NIb;->contextArrayIndex:I

    .line 1330
    return-void
.end method

.method protected setContext(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)Lc8/WIb;
    .locals 6
    .param p1, "parent"    # Lc8/WIb;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 1333
    iget-object v3, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-boolean v3, v3, Lc8/PIb;->disableCircularReferenceDetect:Z

    if-eqz v3, :cond_0

    .line 1334
    const/4 v3, 0x0

    .line 1350
    :goto_0
    return-object v3

    .line 1337
    :cond_0
    new-instance v3, Lc8/WIb;

    invoke-direct {v3, p1, p2, p3}, Lc8/WIb;-><init>(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lc8/NIb;->contex:Lc8/WIb;

    .line 1339
    iget v0, p0, Lc8/NIb;->contextArrayIndex:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lc8/NIb;->contextArrayIndex:I

    .line 1340
    .local v0, "i":I
    iget-object v3, p0, Lc8/NIb;->contextArray:[Lc8/WIb;

    if-nez v3, :cond_2

    .line 1341
    const/16 v3, 0x8

    new-array v3, v3, [Lc8/WIb;

    iput-object v3, p0, Lc8/NIb;->contextArray:[Lc8/WIb;

    .line 1348
    :cond_1
    :goto_1
    iget-object v3, p0, Lc8/NIb;->contextArray:[Lc8/WIb;

    iget-object v4, p0, Lc8/NIb;->contex:Lc8/WIb;

    aput-object v4, v3, v0

    .line 1350
    iget-object v3, p0, Lc8/NIb;->contex:Lc8/WIb;

    goto :goto_0

    .line 1342
    :cond_2
    iget-object v3, p0, Lc8/NIb;->contextArray:[Lc8/WIb;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 1343
    iget-object v3, p0, Lc8/NIb;->contextArray:[Lc8/WIb;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    .line 1344
    .local v2, "newLen":I
    new-array v1, v2, [Lc8/WIb;

    .line 1345
    .local v1, "newArray":[Lc8/WIb;
    iget-object v3, p0, Lc8/NIb;->contextArray:[Lc8/WIb;

    iget-object v4, p0, Lc8/NIb;->contextArray:[Lc8/WIb;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1346
    iput-object v1, p0, Lc8/NIb;->contextArray:[Lc8/WIb;

    goto :goto_1
.end method

.method public setContext(Lc8/WIb;)V
    .locals 1
    .param p1, "context"    # Lc8/WIb;

    .prologue
    .line 1320
    iget-object v0, p0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-boolean v0, v0, Lc8/PIb;->disableCircularReferenceDetect:Z

    if-eqz v0, :cond_0

    .line 1324
    :goto_0
    return-void

    .line 1323
    :cond_0
    iput-object p1, p0, Lc8/NIb;->contex:Lc8/WIb;

    goto :goto_0
.end method

.method public setDateFomrat(Ljava/text/DateFormat;)V
    .locals 0
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .prologue
    .line 114
    iput-object p1, p0, Lc8/NIb;->dateFormat:Ljava/text/DateFormat;

    .line 115
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lc8/NIb;->dateFormatPattern:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/NIb;->dateFormat:Ljava/text/DateFormat;

    .line 111
    return-void
.end method
