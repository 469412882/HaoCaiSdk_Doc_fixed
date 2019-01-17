.class public Lcom/j256/ormlite/logger/Slf4jLoggingLog;
.super Ljava/lang/Object;
.source "Slf4jLoggingLog.java"

# interfaces
.implements Lcom/j256/ormlite/logger/Log;


# instance fields
.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    .line 14
    return-void
.end method


# virtual methods
.method public isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 2
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;

    .line 18
    sget-object v0, Lcom/j256/ormlite/logger/Slf4jLoggingLog$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0

    .line 26
    :pswitch_2
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    return v0

    .line 24
    :pswitch_3
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0

    .line 22
    :pswitch_4
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0

    .line 20
    :pswitch_5
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "msg"    # Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/j256/ormlite/logger/Slf4jLoggingLog$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 58
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 56
    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 53
    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 50
    goto :goto_0

    .line 46
    :pswitch_3
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 43
    :pswitch_4
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 40
    :pswitch_5
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 41
    nop

    .line 61
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 65
    sget-object v0, Lcom/j256/ormlite/logger/Slf4jLoggingLog$1;->$SwitchMap$com$j256$ormlite$logger$Log$Level:[I

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    goto :goto_0

    .line 73
    :pswitch_3
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    goto :goto_0

    .line 70
    :pswitch_4
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    goto :goto_0

    .line 67
    :pswitch_5
    iget-object v0, p0, Lcom/j256/ormlite/logger/Slf4jLoggingLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    nop

    .line 88
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
